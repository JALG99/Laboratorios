#Transformación lineal
install.packages("scales")
library(scales)

estudiantes <- read.csv("../Lab4/datos/data-conversion.csv")
View(estudiantes)

estudiantes$Income.rescaled <- rescale(estudiantes$Income)
View(estudiantes)

(estudiantes$Income - min(estudiantes$Income)) / (max(estudiantes$Income) - min(estudiantes$Income))

rescale(estudiantes$Income, to = c(0,100))

#*Reescalado de más de una variable
reescalar.cols <- function(df, cols){
  nombres <- names(df)
  for(col in cols){
    nombre <- paste(nombres[col], 'rescaled', sep = '.')
    df[nombre] <- rescale(df[,col])
  }
  cat(paste("Hemos reescalado ", length(cols), " variables(s)"))
  df
}

estudiantes <- reescalar.cols(estudiantes, c(1,4))

View(estudiantes)