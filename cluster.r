#Valeria Cantu a01570758
#Emilio Martinez a01177730
#Kathia Ruiz a01571094

# Paso 1 - Instalar librerias y cargarlas
install.packages("cars")
library("cars")

install.packages("cluster")
library(cluster)

install.packages("ggplot2")
library("ggplot2")

install.packages("data.table")
library("data.table")

install.packages("factoextra")
library("factoextra")

# Paso 2 - Determinar cantidad de Clusters
grupos <- 4

# Paso 3 - Utilizar KNN para determinar los clusters
segmentos <- kmeans(cars, grupos)
segmentos

# Paso 4 - Escalar los datos
df <- scale(cars)

# Paso 5 - Asignar el grupo al que pertenece cada asignación
asignacion  <- cbind(cars,cluster = segmentos$cluster)