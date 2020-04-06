library(readr)
library(PerformanceAnalytics)
archived_world_confirm <- read.csv("C:/Users/dia15/Desktop/Tesis/COVID-19/archived_data/archived_time_series/time_series_19-covid-Confirmed_archived_0325.csv")
View(archived_world_confirm)
archived_world_death <- read.csv("C:/Users/dia15/Desktop/Tesis/COVID-19/archived_data/archived_time_series/time_series_19-covid-Deaths_archived_0325.csv")
View(archived_world_death)
archived_world_recovered <- read.csv("C:/Users/dia15/Desktop/Tesis/COVID-19/archived_data/archived_time_series/time_series_19-covid-Recovered_archived_0325.csv")
View(archived_world_recovered)
archived_world_confirm_ncovid <- read.csv("C:/Users/dia15/Desktop/Tesis/COVID-19/archived_data/archived_time_series/time_series_2019-ncov-Confirmed.csv")
View(archived_world_confirm_ncovid)
archived_world_death_ncovid <- read.csv("C:/Users/dia15/Desktop/Tesis/COVID-19/archived_data/archived_time_series/time_series_2019-ncov-Deaths.csv")
View(archived_world_death_ncovid)
archived_world_recovered_ncovid <- read.csv("C:/Users/dia15/Desktop/Tesis/COVID-19/archived_data/archived_time_series/time_series_2019-ncov-Recovered.csv")
View(archived_world_recovered_ncovid)
time_series <- read.csv("C:/Users/dia15/Desktop/Tesis/COVID-19/who_covid_19_situation_reports/who_covid_19_sit_rep_time_series/who_covid_19_sit_rep_time_series.csv")
View(time_series)

files <- list.files(path = "~/csse_covid_19_daily_reports", pattern = "*.csv", full.names = T)
tbl <- sapply(files, read_csv, simplify=FALSE) 
bind_rows(.id = "Province/State")
library('tidyverse')
csv_list = lapply(files, read_csv)
# Concatenate the data in each csv file into one combined data frame
my_data = do.call(rbind, csv_list)

folder <- "~/csse_covid_19_daily_reports"      # path to folder that holds multiple .csv files
file_list <- list.files(path=folder, pattern="*.csv") # create list of all .csv files in folder

# read in each .csv file in file_list and rbind them into a data frame called data 
data <- 
  do.call("rbind", 
          lapply(file_list, 
                 function(x) 
                 read.csv(paste(folder, x, sep=''), 
                 stringsAsFactors = FALSE)))

hist(archived_world_confirm$X3.7.20, 
     main="3/07/2020", 
     xlab="Cantidad", 
     border="blue", 
     col="blue",
     xlim=c(0,10000),
     ylim = c(0,1000),
     las=1, 
     breaks=5)