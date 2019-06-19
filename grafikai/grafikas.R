install.packages ("dplyr")
library(dplyr)
install.packages("eurostat")
library(eurostat)


une_rt_a <- get_eurostat("une_rt_a",
                         stirngsAsFactors = FALSE,
                         filters = list (geo = "LT",
                                         unit = "THS_PER",
                                         sex = "T",
                                         age = "TOTAL"))
df1 <- une_rt_a %>%
  filter (time >= "2004-01-01")

library(ggplot2)

ggplot(df1,aes(time, values))+
geom_line()+
scale_x_date(date_breaks = "1 year") +
  theme(axis.text.x = element_text(angle=90)) +
   labs (title= "Bedarbių skaičius Lietuvoje 2004-2018 metais",
        subtitle = "Šaltinis: Eurostat (une_rt_a)",
x = "Metai",
y = "Žmonių skaičius, tūkst.")