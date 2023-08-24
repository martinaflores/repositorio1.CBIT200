
#1 Cree una nueva variable que contenga un vector con 10 números aleatorios
variable1 <- sample (1:40, 10, F)

#2 multiplíquela por seis
variable1*6

#3 cree una segunda variable que contenga una secuencia de 5 caracteres
variable2 <- c("mesa", "silla", "ventana", "empanada", "caro")

#4 combine las dos variable en una sola variable
variable3 <- c(variable1, variable2)

#5 ¿cuál es el largo de esta última variable creada?
length(variable3)

#6 ¿de qué tipo es esta variable?
class(variable3)

#7 ¿qué sucede si divide esta última variable por 3?

variable3/3

#8 cree un vector con los elementos 1 2 3 4 5 6 y llámelo x

x <- c (1,2,3,4,5,6)

#9 cree un nuevo vector con los elementos 10 20 30 40 50 y llámelo y

y <- c(10,20, 30, 40, 50,)

#10 ¿qué ocurre si intenta sumar x e y? explique

x+y no funciona porque son de distintos largo

#11 agregue el valor 60 al vector y (hint: you can use the c() function)

c(y, 60) 

#12 sume x e y

x+y

#13 multiplique x e y

x*y

#14 cree un data.frame con el mímimo código posible usando los datos de la siguiente imagen y llámelo z:

z <- data.frame(Numero = c(5,4,3,1,2),
                Letra = c("S", "L", "B", "Q", "A"),
                Medida = c(49.59, 91.84,49.32, 72.25, 65.51 ))
#15 
#cree un dataframe de datos ficticios que represente una muestra de 100 individuos de aves y su tamaño 
#corporal. Use 4 tipos de aves: un paseriforme, un columbiforme, un rapaz y trochiliformes en aproximadamente 
#las mismas proporciones. (Averigue el real tamaño promedio de cada grupo)

tipos de aves <- c("Paseriforme", "Columbiforme", "Rapaz", "Trochiliformes")
tamaño corporal <- c(15, 25,40,9)



OTRA VES
#1 Cree una nueva variable que contenga un vector con 10 números aleatorios
variable1 <- sample (1:40, 10, F)

#2 multiplíquela por seis
variable1*6

#3 cree una segunda variable que contenga una secuencia de 5 caracteres
variable2 <- c("mesa", "silla", "ventana", "empanada", "caro")

#4 combine las dos variable en una sola variable
variable3 <- c(variable1, variable2)

#5 ¿cuál es el largo de esta última variable creada?
length(variable3)

#6 ¿de qué tipo es esta variable?
class(variable3)

#7 ¿qué sucede si divide esta última variable por 3?

variable3/3

#8 cree un vector con los elementos 1 2 3 4 5 6 y llámelo x

x <- c (1,2,3,4,5,6)

#9 cree un nuevo vector con los elementos 10 20 30 40 50 y llámelo y

y <- c(10,20, 30, 40, 50,)

#10 ¿qué ocurre si intenta sumar x e y? explique

x+y no funciona porque son de distintos largo

#11 agregue el valor 60 al vector y (hint: you can use the c() function)

c(y, 60) 

#12 sume x e y

x+y

#13 multiplique x e y

x*y

#14 cree un data.frame con el mímimo código posible usando los datos de la siguiente imagen y llámelo z:

z <- data.frame(Numero = c(5,4,3,1,2),
                Letra = c("S", "L", "B", "Q", "A"),
                Medida = c(49.59, 91.84,49.32, 72.25, 65.51 ))

#15 
#cree un dataframe de datos ficticios que represente una muestra de 100 individuos de aves y su tamaño 
#corporal. Use 4 tipos de aves: un paseriforme, un columbiforme, un rapaz y trochiliformes en aproximadamente 
#las mismas proporciones. (Averigue el real tamaño promedio de cada grupo)


tipos_de_aves <- rep(c("Paseriforme", "Columbiforme", "Rapaz", "Trochiliformes"), each = 25)
tamaño_corporal <- c(15, 25,40,9)
individuos <- sapply(tamaño_corporal, function(media) rnorm(25, mean = media, sd = media * 0.2))

# Data frame
ejercicio_aves <- data.frame(aves=tipos_de_aves,
                             Tamaño_corporal = tamaño_corporal)

#16 Gráfico 


grafico <- ggplot(data = ejercicio_aves, mapping =  aes(x=tipos_de_aves, y= tamaño_corporal, fill = tipos_de_aves)) +
  geom_boxplot()+
  labs (title = "Tamaño corporal de distintas aves")+
  xlab("Tipo de aves") +
  ylab("Tamaño corporal (cm)") +
  color= "Tipo de aves")+
  theme(axis.title = element_text(face="bold")) + 
  theme(plot.title= element_text(size= rel(2), hjust = 0.5, face= "bold.italic"))+
  theme(legend.background = element_rect(fill = "white",colour = "black"))
grafico

ggplot(data = ejercicio_aves, mapping = aes(x=tipos_de_aves, y= tamaño_corporal)) +
  geom_boxplot()+ 
  labs(title = "Tamaño corporal de distintas aves")+
  xlab("tipo de aves")+
  ylab("tamaño corporal")+
  color = "tipo de aves"