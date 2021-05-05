#Normalizacion de datos
casas <- read.csv("../Lab4/datos/BostonHousing.csv")
View(casas)

#Caso 1
casas.z <- scale(casas)
View(casas.z)

#Caso 2
casas.mean <- scale(casas, center = TRUE, scale = FALSE)
View(casas.mean)

#Caso 3
casas.sd <- scale(casas, center = FALSE, scale = TRUE)
View(casas.sd)

#Normalizacion de mas de una variable
normalizar.cols <- function(df, cols){
  nombres <- names(df)
  for (col in cols) {
    nombre <- paste(nombres[col], "z", sep = ".")
    df[nombre] <- scale(df[,col])
  }
  cat(paste("Hemos normalizado ", length(cols), " variable(s)"))
  df
}

casas <- normalizar.cols(casas, c(1,3,5:8))
View(casas)
