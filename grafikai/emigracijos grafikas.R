if(!require(eurostat)) {install.packages("eurostat")
  library(eurostat)}
if(!require(dplyr)) {install.packages("dplyr")
  library(dplyr)}
if(!require(ggplot2)) {install.packages("ggplot2")
  library(ggplot2)}

df2 <- migr_emi2 %>%
  filter (geo=="LT",
          time>="2004-01-01",
          sex=="T",
          age=="TOTAL",
          unit=="NR",
          agedef=="REACH")


ggplot(df2, aes(time, values)) +
  geom_bar(stat="identity") +
  labs (x="Metai", y="Emigrant� skai�ius", 
        title = "Emigrant� i� Lietuvos skai�ius 2004-2018 metais", 
        subtitle= "�alitinis: Eurostat (migr_emi2)")