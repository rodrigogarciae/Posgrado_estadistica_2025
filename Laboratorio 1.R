300+240+1527+400+1500+1833
celular <- 300
transporte <-240
comestible <- 1527
gimnasio <- 400
alquiler <-1500
otros <- 1833
5800*5*2
abs(10)
abs(-4)
sqrt(9)
log(2)
#Este es un comentario

4 + 5 # también se puede hacer un comentario

celular <- 300
celular <- -300
CELULAR <- -8000

help(abs)
help(mean)
help.search("absolute")
gastos <- c(celular=300, transporte=240, comestible=1527, gimnasio=400, alquiler=1500, otros=1833)

gastos
barplot(gastos)
barplot(sort(gastos))
gastos_ordenados <-  sort(gastos,decreasing = TRUE)
barplot(gastos_ordenados)
barplot(gastos_ordenados, names.arg gastos_ordenados)
names(gastos_ordenados) <- c("otros", 
      "comestible", 
      "alquiler", 
      "gimnasio", 
      "celular", 
      "transporte")
barplot(gastos_ordenados,
        main = "Gastos mensuales",
        names.arg = names(gastos_ordenados),
        col ="skyblue")