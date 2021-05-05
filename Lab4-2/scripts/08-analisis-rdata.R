#Crear fichero de datos
#Caso 1

clientes <- c("Arturo", "Bill", "Jack")
fechas <- c("2021-05-01", "2021-04-28", "2021-03-30")
pagos <- c(315.1, 205.4, 450.2)

fechas <- as.Date(c("2021-05-01", "2021-04-28", "2021-03-30"))

pedidos <- data.frame(clientes, fechas, pagos)

View(pedidos)

#Ficheros RData

save(pedidos, file="../datos/pedidos.Rdata")

cliente.frec <- c("Arturo", "Jack")
save(pedidos, cliente.frec, file = "../datos/pedidos.Rdata")
save.image(file="../datos/alldata.Rdata")

#Ficheros rds
saveRDS(pedidos, file = "../datos/pedidos.rds")

#Eliminacion de objetos
remove(pedidos)

#Carga de archivos
load("../datos/pedidos.RData")
attach("../datos/pedidos.RData")

orders <- readRDS("../datos/pedidos.rds")

#Caso 2

write.csv(pedidos,'../datos/pedidos.csv', na = "NA", row.names = FALSE)

write.csv(pedidos, '../datos/pedidos2.csv', na = "NA")
