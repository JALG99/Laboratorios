install.packages("jsonlite")
library(jsonlite)

stu.file <- "students.json"
students <- fromJSON(stu.file)

cou.file <- "student-courses.json"
courses <- fromJSON(cou.file)