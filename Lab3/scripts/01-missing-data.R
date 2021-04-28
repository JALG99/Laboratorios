#Eliminar datos sin valor

data <- read.csv("../Lab3/datos/missing-data.csv", na.strings = "")
data.limpia <- na.omit(data)
View(data.limpia)

is.na(data[4,2])
is.na(data[4,1])
is.na(data$Income)

#Limpieza selectiva

#Caso1

data.income.limpio <- data[!is.na(data$Income),]

#Caso2

complete.cases(data)
data.limpia2 <- data[complete.cases(data),]

#Caso3

data$Income[data$Income == 0]
data$Income[data$Income == 0] <- NA
data$Income[data$Income == 0]

#Caso4

mean(data$Income)
mean(data$Income, na.rm=TRUE)
sd(data$Income)
sd(data$Income, na.rm=TRUE)
sum(data$Income)
sum(data$Income, na.rm=TRUE)