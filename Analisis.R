library (readr)
urlfile="https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv"
covid19confirmed<-read_csv(url(urlfile))
head(covid19confirmed)

urlfile2="https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv"
covid19deaths<-read_csv(url(urlfile2))
head(covid19deaths)

urlfile3="https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv"
covid19deaths<-read_csv(url(urlfile3))
head(covid19recovered)

#obtener ultima columna

test2 <- covid19confirmed[,2]

#grafica de todos los valores 
ultimoupdate <- colnames(covid19confirmed)[ncol(covid19confirmed)]
number_of_last_column <- which( colnames(covid19confirmed)==ultimoupdate )
ultima_columna_confirmed <- covid19confirmed[,number_of_last_column]
counts <- table(covid19confirmed$`Country/Region`, ultima_columna_confirmed)
barplot(counts, main="Confirmados COVID19",
xlab="Paises", col=topo.colors(56),
legend = rownames(counts))

barplot(counts, main="Confirmados Corona",
  xlab="Paises", col=topo.colors(56),
  legend = rownames(counts), beside=TRUE)

#analisis de confirmados
hist(ultima_columna_confirmed)
qqnorm(ultima_columna_confirmed)
qqline(ultima_columna_confirmed, col = "blue", lwd = 2)
#diagrama de caja y bigotes
boxplot(airquality$Ozone)
