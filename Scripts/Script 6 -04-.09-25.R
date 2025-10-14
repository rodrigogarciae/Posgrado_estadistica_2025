data("iris")
boxplot(iris$Sepal.Length ~ iris$Species)

dat_iris <- subset(iris, Species %in% c("versicolor", "virginica"))

# Eliminar un factor que se desecho en la base de datos
dat_iris$Species <- droplevels(dat_iris$Species)
boxplot(dat_iris$Sepal.Length ~ dat_iris$Species)
boxplot (setosa$Sepal.Length)

# H0 = la media de SL de virginica es mayor que la de versicolor

t.test(dat_iris$Sepal.Length ~ dat_iris$Species,
       alternative = "greater", var.equal =T)
tapply(dat_iris$Sepal.Length,dat_iris$Species, mean)
