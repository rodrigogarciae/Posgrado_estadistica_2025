#Laboratorio 1
#Rodrigo García Estrada 
#Parte 1 R y Rstudio
#Considere las facturas mensuales de un estudiante de la MCF:teléfono celular $300,transporte $240, comestibles $1527,gimnasio $400, alquilir $1500, otros $1833. Usar R para encontrar los gastos totales
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


4 + 5 

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
barplot(gastos_ordenados, names.arg = gastos_ordenados)
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
#Parte ll Variables
#Problema 1: Identifique el tipo de variable (cualitativa o cuantitativa) para la lista de preguntas para una encuesta aplicada a estudiantes universitarios en una clase de estadistica
#Nombre de estudiante= cualitativa
#Fecha de nacimiento= cualitativa
#Edad= cuantitativa
#Dirección de casa= cualitativa
#Número de teléfono= cualitativa
#Área principal de estudio= cualitativa
#Grado de año universitario= cualitativa
#Puntaje en la prueba de mitad de período= cuantitativa
#Calificación general= cualitativa
#Tiempo (en minutos) para completar la prueba final de MCF 202:cuantitativa 
#Numero de hermanos= cuantitativa

#Problema 2 Variables de un objeto: Celular

# Variables cuantitativas: precio, número de camaras, número de GB, memoria, aplicaciones
# Variables cualitativas: color, marca, tamaño, definición de la pantalla, tipo de entrada, tipo de bateria

#Problema 3 Tipo de variable

#Considere una variable con valores numéricos que describen formas electrónicas de expresar opiniones personales: 1 = Twitter; 2 = correo electrónico; 3 = mensaje de texto; 4 = Facebook; 5 = blog. ¿Es #esta una variable cuantitativa o cualitativa? Explique. 

#Respuesta: Cualitativa 

#Explicación:Cabe señalar que los valores representan números, pero estos no cuentan con valores exactos, por lo que se consideran cualitativos.

# Problema 4 Para cada pregunta de investigación

# Pregunta 1: ¿Cuál es la cantidad promedio de horas que los estudiantes de universidades publicas  trabajan cada semana?
# Tipo= cuantitativa
# Variable= horas que se trabajan por semana
# Individuos= estudiantes

# Pregunta 2: ¿Qué proporción de todos los estudiantes  universitarios  de México  están inscritos en una universidad  pública?
# Tipo= cuantitativa
# Variable= Estar incrito en una universidad pública
# Individuos= Estudiantes universitarios en México

# Pregunta 3: En las universidades públicas , ¿Las estudiantes femeninas tienen un promedio de CENEVAL más alto que los estudiantes varones?
# Tipo= cuantitativa
# Variable= Puntaje en el CENEVAL
# Individuos= Estudiantes femeninas y masculinos

# Pregunta 4: ¿Es más probable que los atletas universitarios  reciban asesoramiento  académico  que los atletas no universitarios?
# Tipo= cuantitativo
# Variable= Recibir asesoramiento academico
# Individuos= Los estudiantes que son atletas y los que no lo son

# Pregunta final. Si reunieramos datos  para responder  a las preguntas de la investigación anerior, ¿qué datos podrian analizarse mediante un histograma?

# Respuesta= Puntajes CENEVAL entre hombres y mujeres,proporcion de estudiantes en universidade públicas las horas trabajadas por semana y atletas con asesoramiento academico al igual a los atletas no universitarios.

# Justificación: Los histogramas nos representan la distribución de frecuencia de un conjunto de datos #numéricos, por lo que nos permite identificar patrones, tendencias y valores atipicos en lo datos. En este #caso las preguntas se refieren a promedios, frecuencia lo cual se asocia a variables cuantitativas y los histogramas se realizan es este tipo de variable, por lo tanto en todas las preguntas se puede realizar un histograma.


