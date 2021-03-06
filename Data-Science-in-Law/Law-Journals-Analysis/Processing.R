# R Language script
# Written by Sathish Deevi

#Set you working directory (the folder where you keep the data, script and work out of)
setwd("C:/.../Data")


#############################################
##	Read in Data
#############################################

list<-as.list(list.files("."))
class(list)
data<-vector("list",11)

data<-lapply(list, read.csv)

#class(data)
#head(data[[1]])
#length(data)

#############################################
##Add a column for the final year
#############################################

for (i in 1:11){
	data[[i]]<-cbind(data[[i]],2003+i)
	colnames(data[[i]])[ncol(data[[i]])]<-"Year"
}

#head(data[[11]])



#############################################
##Get consistent columns
#	NB: turned out 2004-2013 are the same, 
#	    2014 added a new column (cost/cite)
#############################################


#lapply(data,colnames)

cl.data<-vector("list",11)
	cl.data[[1]]<-data[[1]][,c(1,3,5:12)]
	cl.data[[2]]<-data[[2]][,c(1,3,5:12)]
	cl.data[[3]]<-data[[3]][,c(1,3,5:12)]
	cl.data[[4]]<-data[[4]][,c(1,3,5:12)]
	cl.data[[5]]<-data[[5]][,c(1,3,5:12)]
	cl.data[[6]]<-data[[6]][,c(1,3,5:12)]
	cl.data[[7]]<-data[[7]][,c(1,3,5:12)]
	cl.data[[8]]<-data[[8]][,c(1,3,5:12)]
	cl.data[[9]]<-data[[9]][,c(1,3,5:12)]
	cl.data[[10]]<-data[[10]][,c(1,3,5:12)]
	cl.data[[11]]<-data[[11]][,c(1,3,5:11,13)]


#head(cl.data[[11]])
#lapply(cl.data,colnames)

names<-c("Rank","Journal","Country", "Combined",
  		"Combined.non.normalized","Impact",
  		"Journals","Currency", "Cases","Year")
cl.data<-lapply(cl.data,setNames,names)


#############################################
## Combine to one dataframe; ditch the list
#############################################
#NOTES
#	1) L1 and Year are functionally the same.
#	2) 3177 missing values on Rank
#		--> seems like the journals don't
#		 matter enough.. like 200 each year!
#################
###########
#################

rm(data)

library(reshape2)
data<-melt(cl.data,id.vars=names)
head(data)

##	Dimensions match? Yes
#unlist(lapply(cl.data,dim))
#11*1624
#dim(data)


#write.csv(data, file="Clean_Law_Journals.csv")
