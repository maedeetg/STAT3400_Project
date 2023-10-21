library(tidyverse)

one <- read_csv("10000-MTV-Music-Artists-page-1.csv")
two <- read_csv("10000-MTV-Music-Artists-page-2.csv")
three <- read_csv("10000-MTV-Music-Artists-page-3.csv")
four <- read_csv("10000-MTV-Music-Artists-page-4.csv")

all_artists <- data.frame(c(one$name, two$name, three$name, four$name))

set.seed(100)

rows <- sample(x = nrow(all_artists), size = 100, replace = FALSE)

rand100 <- all_artists[rows, ]
