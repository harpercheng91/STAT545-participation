## cm011

library(tidyverse)
library(gapminder)

gapminder
write_csv(gapminder, "./gapminder.csv")
View(gapminder)

gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarize(ave_life=mean(lifeExp))

View(gapminder_sum)
write_csv(gapminder_sum, './gapminder_sum.csv')

gapminder_sum %>% 
  ggplot(aes(x=continent, y=ave_life)) +
  geom_point() +
  theme_bw()

# Claer your environment:
# remove(list=ls())

# Set your working directory:
library(here)
# write_csv('./test/tes/te/t/gapminder_sum.csv')
# platform agnostic, dir-structure agnostic
here::here("test", "tes", "te", "t", "gapminder_sum.csv")

set_here()
write_csv(gapminder_sum, here::here("gapminder_sum.csv"))


data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
# read_csv can directly import urls but read_excel requires you to download it first

# basename() gives you the file name from a url
file_name <- basename(data_url)
download.file(url=data_url, 
              destfile=paste('./datasets/', file_name))

# Another way and a better way to download the file.
download.file(url=data_url,
              destfile=here::here(file_name))

library(readxl)
philanthropists <- read_excel(here::here(file_name), trim_ws=TRUE)
View(philanthropists)

mri_file <- here::here("Firas-MRI.xlsx")
mri <- read_excel(mri_file, range="A1:L12")
View(mri)

mri <- mri[, -10]

mri <- mri %>% 
  pivot_longer(cols="Slice 1":"Slice 8",
               names_to="slice_no",
               values_to="value")



