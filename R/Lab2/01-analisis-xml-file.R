install.packages("XML")
library(XML)

cd.file <- "cd_catalog.xml"
cd.doc <- xmlParse(cd.file)

root.nodecd <- xmlRoot(cd.doc)
root.nodecd[1]
root.nodecd[2]

cd.data <- xmlSApply(root.nodecd, function(x) xmlSApply(x, xmlValue))
cd.datos <- data.frame(t(cd.data), row.names = NULL)