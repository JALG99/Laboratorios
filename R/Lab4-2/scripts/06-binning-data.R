#Categorizacion de datos numericos
estudiantes <- read.csv("../datos/data-conversion.csv")
View(estudiantes)

niveles <- c(-Inf, 1000, 3100, Inf)
nom.nivel <- c('Bajo', 'Medio', 'Alto')

estudiantes$Income.cat <- cut(estudiantes$Income, breaks = niveles, labels = nom.nivel)
View(estudiantes)
str(estudiantes)

estudiantes$Income.cat2 <- cut(estudiantes$Income, breaks = 4, labels = c("Nivel 1", "Nivel 2", "Nivel 3", "Nivel 4"))
View(estudiantes)

#Variables ficticias
estudiantes <- read.csv("../datos/data-conversion.csv")

install.packages("dummies")
library(dummies)

estudiantes.dummy <- dummy.data.frame(estudiantes, sep = ".")
names(estudiantes.dummy)
View(estudiantes.dummy)

dummy(estudiantes$State, sep=".")

dummy.data.frame(estudiantes, names = c("State"), sep =".")

dummy.data.frame(estudiantes, names = c("State", "Gender"), sep =".")
