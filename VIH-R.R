setwd("C:/Users/dia15/Desktop/Pandemias Tesis/Pandemias_Mundiales/Data/vih")
datos <- read.csv("AIDS_diagnoses_men_infected_by_sex_between_men_by_country_and_year_of_diagnosis_2006 to 2015.csv")

library(e1071)
library(caret)
porcentaje<-0.7