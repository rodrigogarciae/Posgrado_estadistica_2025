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
head(temperatura)

names(temperatura) <- c("Anual","Ene",
                        "Feb","Mar","Abr","May","Jun","Jul","Ago","Sep",
                        "Oct","Nov","Dic") #corregir nombre de columna
temperatura$media_anual <- rowMeans(temperatura[,2:13])
head(temperatura)
temp <- temperatura [ ,2:13]
temperatura[2,2]
boxplot(temperatura)

temperatura$media_anual <- round(rowMeans(temperatura[,2:13]),)
head(temperatura)

write.csv(temperatura, "temp_final.csv")
temp <- temperatura[,2:13]
temp10 <- temperatura[11:21,2:13]
temperatura[2,2]
# importar datos web ------------------------------------------------------
url <- "https://repodatos.atdt.gob.mx/api_update/senasica/actividades_inspeccion_movilizacion/29_actividade-4"

url2 <- paste("https://repodatos.atdt.gob.mx/api_update/senasica/",
              "actividades_inspeccion_movilizacion/",
              "29_actividades-inspeccion-movilizacion.csv")
senacia <-read.csv(url,header=T)
read.csv("https://repodatos.atdt.gob.mx/api_update/senasica/actividades_inspeccion_movilizacion/29_actividades_inspeccion_movilizacion/29_actividades"

senacica <-read.csv(url,header=T)
View(senacica)



url <-"https://www.datos.gob.mx/dataset/combinacion_exportacion/resource/93eb0272-452b-413e-919e-d2f30d6e7f27"
  
senacia <-read.csv(url,header=T)       

read.csv("https://www.datos.gob.mx/dataset/combinacion_exportacion/resource/93eb0272-452b-413e-9-d2f30d6e7f27)

senacica <-read.csv(url,header=T)

View(senacica)
