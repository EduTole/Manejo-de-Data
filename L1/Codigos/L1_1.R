rm(list=ls())
ruta <- "D:/Dropbox"
base <- "/BASES/ENAHO"
codigo <- "/Docencia/Cientifica/Seminario_2/L1/Data/codigos"
out <- "/Docencia/Cientifica/Seminario_2/L1/Data"

library(readstata13)
#?readstata13
library(dplyr)
library(tidyverse)
require(openxlsx)
library(readxl)

data <- read_excel(paste0(ruta,"/",out,"/","BD_1.xlsx"))
data %>%  dim()



