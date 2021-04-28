install.packages("jsonlite")
library(jsonlite)

cur.url <- "https://www.floatrates.com/daily/usd.json"
currency <- fromJSON(cur.url)