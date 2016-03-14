# Copied from http://datascienceplus.com/hindex-gindex-pubmed-rismed/
# Code written by: Aaron Gowinson


x <- "Yi-Kuo Yu"
res <- EUtilsSummary(x, type="esearch", db="pubmed", datetype='pdat', mindate=1900, maxdate=2015, retmax=500)
citations <- Cited(res)
citations <- as.data.frame(citations)


citations <- citations[order(citations$citations,decreasing=TRUE),]
citations <- as.data.frame(citations)
citations <- cbind(id=rownames(citations),citations)
citations $id<- as.character(citations$id)
citations $id<- as.numeric(citations$id)
hindex <- max(which(citations$id<=citations$citations))

hindex

citations

y <- YearPubmed(EUtilsGet(res))
low <- min(y)
high <- max(y)
den <- high-low
mquotient <- hindex/den

mquotient

citations$square <- citations$id^2
citations$sums <- cumsum(citations$citations)
gindex <- max(which(citations$square<citations$sums))

gindex

citations
