# load packages
library(dplyr)
library(tidyr) # install.packages('tidyr')
library(readr) # install.packages('readr')

# set directory
dir_spp <- '~/github/mex/prep/SPP'
setwd(dir_spp)

dir_layers <- '~/github/mex/region2017/layers'

# read in raw data file
mex_mamiferos <- read_csv(file.path(dir_spp, 'spp_mamiferos_2018.csv')) %>%
  select(x, y, especie, amenaza)