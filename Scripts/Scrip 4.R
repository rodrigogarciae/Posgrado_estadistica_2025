# scrip 4
# 28/08/2025
# Rodrigo Garcia Estrada

# Importar ---------------------------------

calidad <- read.csv("calidad_plantula.csv", header = T)
calidad$Tratamiento <- as.factor(calidad$Tratamiento)
class(calidad$Tratamiento)
summary(calidad)

mean(calidad$IE)

tapply(calidad$IE, calidad$Tratamiento, mean)
tapply(calidad$IE, calidad$Tratamiento, sd)
tapply(calidad$IE, calidad$Tratamiento, var)

colores <- c("navajowhite","skyblue")

boxplot(calidad$IE~calidad$Tratamiento, 
        col = colores,

xlab = "Tratamientos",
ylab = "indice de calidad",
ylim = c(0.4, 1.2),
main = "Vivero Forestal")

# Aplicar un subconjunto para cada tratamiento

df_ctrl <- subset(calidad, Tratamiento == "Ctrl") 
df_fert <- subset(calidad, Tratamiento == "Fert") 

par(mfrow=c(1,2))
qqnorm(df_ctrl$IE); qqline(df_ctrl$IE)
qqnorm(df_ctrl$IE); qqline(df_fert$IE)
par(mfrow=c(1,1))

shapiro.test((df_ctrl$IE))
shapiro.test((df_fert$IE))

var.test(calidad$IE ~ calidad$Tratamiento)

t.test(calidad$IE ~ calidad$Tratamiento, alternative = "two.side", var.equal = T)
t.test(calidad$IE ~ calidad$Tratamiento, alternative = "two.side", var.equal = F)
t.test(calidad$IE ~ calidad$Tratamiento, alternative = "greater", var.equal = T)

# medir el efecto de la fertilizcion (cohen)

cohens_efecto <- function(x, y) {
  n1 <- length(x)
  n2 <- length(y)
  
  s1 <- sd(x)
  s2 <- sd(y)
  
  sp <- sqrt(((n1 - 1) * s1^2 + (n2 - 1) * s2^2) / (n1 + n2 - 2))
  
  d <- (mean(x) - mean(y)) / sp
  
  return(d)
}

d_cal <- cohens_efecto(df_ctrl$IE, df_fert$IE)
d_cal
