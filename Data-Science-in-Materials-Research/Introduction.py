from pymatgen import MPRester, periodic_table
import itertools

API_KEY = ‘YOUR_KEY_HERE’ # You have to register with Materials Project to receive an API

# There are 103 elements in pymatgen's list, giving C(103, 2) = 5253 binary systems
allBinaries = itertools.combinations(periodic_table.all_symbols(), 2) # Create list of all binary systems

with MPRester(API_KEY) as m:
    for system in allBinaries:
        results = m.get_data(system[0] + '-' + system[1], data_type='vasp') # Download DFT data for each binary system
        for material in results: # We will receive many compounds within each binary system
            if material['e_above_hull'] < 1e-6: # Check if this compound is thermodynamically stable
                print(material['pretty_formula'] + ',' + str(material['band_gap'])) # Output band gap csv to the screen      



from pymatgen import Composition, Element
from numpy import zeros, mean

# Training file containing band gaps extracted from Materials Project
# created in previous blog post and linked here
trainFile = open("bandgapDFT.csv","r").readlines()

# Input: pymatgen Composition object
# Output: length-100 vector representing any chemical formula

def naiveVectorize(composition):
       vector = zeros((MAX_Z))
       for element in composition:
               fraction = composition.get_atomic_fraction(element)
               vector[element.Z - 1] = fraction
       return(vector)

# Extract materials and band gaps into lists, and construct naive feature set
materials = []
bandgaps = []
naiveFeatures = []

MAX_Z = 100 # maximum length of vector to hold naive feature set

for line in trainFile:
       split = str.split(line, ',')
       material = Composition(split[0])
       materials.append(material) #store chemical formulas
       naiveFeatures.append(naiveVectorize(material)) #create features from chemical formula
       bandgaps.append(float(split[1])) #store numerical values of band gaps



# Establish baseline accuracy by "guessing the average" of the band gap set
# A good model should never do worse.
baselineError = mean(abs(mean(bandgaps) - bandgaps))
print("The MAE of always guessing the average band gap is: " + str(round(baselineError, 3)) + " eV")


# Train linear ridge regression model using naive feature set
from sklearn import linear_model, cross_validation, metrics, ensemble

#alpha is a tuning parameter affecting how regression deals with collinear inputs
linear = linear_model.Ridge(alpha = 0.5)  

cv = cross_validation.ShuffleSplit(len(bandgaps),\
	n_iter=10, test_size=0.1, random_state=0)

scores = cross_validation.cross_val_score(linear, naiveFeatures,\
	bandgaps, cv=cv, scoring='mean_absolute_error')

print("The MAE of the linear ridge regression band gap model using the naive feature set is: "\
	+ str(round(abs(mean(scores)), 3)) + " eV")




# Let's see which features are most important for the linear model

print("Below are the fitted linear ridge regression coefficients for each feature (i.e., element) in our naive feature set")

linear.fit(naiveFeatures, bandgaps) # fit to the whole data set; we're not doing CV here

print("element: coefficient")

for i in range(MAX_Z):
       element = Element.from_Z(i + 1)
       print(element.symbol + ': ' + str(linear.coef_[i]))


# Create alternative feature set that is more physically-motivated

physicalFeatures = []

for material in materials:
       theseFeatures = []
       fraction = []
       atomicNo = []
       eneg = []
       group = []

       for element in material:
               fraction.append(material.get_atomic_fraction(element))
               atomicNo.append(float(element.Z))
               eneg.append(element.X)
               group.append(float(element.group))

       # We want to sort this feature set
       # according to which element in the binary compound is more abundant
       mustReverse = False

       if fraction[1] > fraction[0]:
               mustReverse = True

       for features in [fraction, atomicNo, eneg, group]:
               if mustReverse:
                       features.reverse()
       theseFeatures.append(fraction[0] / fraction[1])
       theseFeatures.append(eneg[0] - eneg[1])
       theseFeatures.append(group[0])
       theseFeatures.append(group[1])
       physicalFeatures.append(theseFeatures)


rfr = ensemble.RandomForestRegressor(n_estimators=10) #try 10 trees in the forest

#This code is from an introduction/tutorial available from <http://www.citrine.io/blog/?author=531a8256e4b0467fe7e39228>
# It was written and posted by Bryce Meredig of Citrine
