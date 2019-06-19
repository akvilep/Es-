library(eurostat)
library(dplyr)
install.packages("data.table")
library(data.table)
demo_pjan <- get_eurostat("demo_pjan",
                          stringsAsFactors = FALSE,
                          filters = list (age = "TOTAL",
                                          geo = "LT",
                                          sex = "T",
                                          unit = "NR"))

df4 <- demo_pjan %>%
  filter (time >= "2004-01-01")

df4 = as.data.table(df4)
df4[, c("age", "unit", "sex", "geo"):=NULL]
df4