temperatura <- read.csv("C:/Users/Usuario/Downloads/temperatura.csv")
 View(temperatura)
 
 head(temperatura) #Primeras 6 filas
 dim(temperatura)
names(temperatura) #Numero de filas y columnas
names(temperatura) #Nombres de las columnas
str(temperatura)   #Estructura del data frame

summary(temperatura) #Resumen estadistico
names(temperatura) <- c("Anual", "Ene", "Feb", "Mar","Abr", "Mayo", "Jun", "Jul","Ago", "Sep", "Oct","Nov","Dic") #corregie nombre de la columna

temperatura$media_anual <- rowMeans (temperatura[11:21,])
