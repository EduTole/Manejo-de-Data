# Los numerales como se observa son para poder colocar comentarios
# Se debe tener encuenta la ruta de carpetas

# Limpiar informacion de carpetas
rm(list=ls())

# Ubicar ruta de carpeta
ruta <- "D:/Dropbox/Docencia/Cientifica/Seminario_2/L1/Data"

# Carga de librerias
require(openxlsx)
library(readr)
library(dplyr)

# Carga de informacion 
data <- read_csv("BD_Mincer_2021.csv")

# Descripccion de informacion
data %>%  names()

# Informacion de primeras 5 observaciones
data %>%  head(5)

# Creaccion de estadisticas descriptivas
# Manera simple
data %>%  summary()

# Analisis descriptivo completo
T1_educacion <- data %>% 
  mutate(target='años_educacion') %>%
  group_by(target) %>% 
  summarise(Promedio = mean(reduca),
         Minimo = min(reduca),
         Maximo = max(reduca),
         Desv = sd(reduca))
T1_educacion

T1_ingreso <- data %>% 
  mutate(target='ingresos') %>%
  group_by(target) %>% 
  summarise(Promedio = mean(r6),
            Minimo = min(r6),
            Maximo = max(r6),
            Desv = sd(r6))

# Uniendo las bases de datos por fila
T1 <- rbind(T1_educacion,T1_ingreso)
T1

# Tabla de ingresos por departamento
T2_ingreso <- data %>% 
  mutate(target='rDpto-ingresos') %>%
  group_by(rDpto,target) %>% 
  summarise(Promedio = mean(r6),
            Minimo = min(r6),
            Maximo = max(r6),
            Desv = sd(r6))
T2_ingreso

