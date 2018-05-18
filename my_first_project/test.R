
## load library
library(tidyverse)
library(magrittr)

## load data
data("iris")

## select setosa group
setosa = iris[iris$Species == "setosa", ]

## Option-2: select setosa
setosa_2 = iris %>% 
  dplyr::filter(Species == "setosa") %>% 
  dplyr::select(c(1,2))

## Ex11. Find setosa flowers whose Sepal.Length2 value are non-missing from IRIS3 dataset
irisnew=iris3[iris3$Species == "setosa" & !is.na(iris3$Sepal.Length2), ]

## option-2
irisnew_2 = iris3 %>% 
  dplyr::filter(Species == "setosa") %>% 
  dplyr::filter(!is.na(Sepal.Length2))




