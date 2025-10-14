# Prueba de t muestras dependientes
#Revisra la producción  del kg semilla para el año 2013 y 2014

prod <- read.csv("prod.csv", header = T)
prod_df <- read.csv("prod.csv")
prod_df$Tiempo <- as.factor(prod_df$Tiempo)
boxplot(prod$kgsemilla, prod$Tiempo, mean)
tapply(prod$kgsem, prod$Tiempo, mean)

t2012 <- subset(prod$kgsem, prod$Tiempo == "T2012")
t2013 <- subset(prod$kgsem, prod$Tiempo == "T2013")

# H0 las medias del 2012 es menor que 2013
# H1 las medias de ambos años son diferentes a cero
# Método alternativo two.side

var.test(prod$kgsem ~ prod$Tiempo)
t.test (t2012, t2023,
        alternative = "two.sided",
        var.equal = T,
        paired =T)
