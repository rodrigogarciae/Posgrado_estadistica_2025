# Media m?vil para determinar el n ideal con respecto a la poblaci?n

data("iris")
head(iris)


setosa <- subset(iris, Species == "setosa")
# Sumatoria acumulativa de la variable longitud
acum <- cumsum(setosa$Sepal.Length)
acum #Sumatoria acumulada

cont <- seq(1:length())

# Crear un data frame con los datos

set_mov <- data.frame(cont,acum)
set_mov$m?vil <- round(acum/cont,2)

plot(cont, set_mov$movil, type = "l",
     xlab = "N?mero de observaciones",
     ylab = "Media m?vil")
abline(h=mean(setosa$Sepal.Length),
       col = "indianred")
mean(setosa$Sepal.Length)
