library(fpp3)
global_economy
#View(global_economy)

# A `tsibble` allows storage and manipulation of multiple time series in R.
# It contains:
  # An index - Time information about the observation.
  # Measured Variables - Numbers of interest.
  # Key Variables - Optional unique identifiers for each series.
# Works with tidyverse functions.

my_data <- tsibble(
  Year = 2015:2022,
  values = c(120, 115, 116, 125, 128, 130, 125, 115),
  index = Year
)
my_data

#Using tibble

mydata <- tibble(
  Year = 2015:2022,
  values = c(120, 115, 116, 125, 128, 130, 125, 115), 
) |>
  as_tibble(index = Year)
mydata

#pipe operator - 1. %>% , 2. |>

olympic_running

sex <- olympic_running %>% distinct(Sex)
sex

PBS
cost <- PBS %>% filter(ATC2 == "A10")
cost

ATC2 <- PBS %>% distinct(ATC2)
ATC2

result <- PBS %>%
  filter(ATC2 == "A10") %>%
  select(Month, Concession, Type, Cost)

result

#The select() function allows us to select particular columns, 
# while filter() allows us to keep particular rows.

#Summarise function
summarise <- PBS %>% 
  filter(ATC2 == "A10") %>%
  select(Month, Concession, Type, Cost) %>%
  summarise(TotalC = sum(Cost))

summarise
#The new variable TotalC is the sum of all Cost values for each month.

#Mutate function

mutate <- PBS %>% filter(ATC2 == "A10") %>%
  select(Month, Concession, Type, Cost) %>%
  summarise(TotalC = sum(Cost)) %>%
  mutate(Cost = TotalC /1e6) -> a10

mutate

#Read csv file and convert to a tsibble file

prison <- read.csv("https://OTexts.com/fpp3/extrafiles/prison_population.csv")prison
head(prison)

prisonquarter <- prison %>% 
  mutate(Quarter = yearquarter(Date)) %>%
  select(-Date) %>%
  as_tibble(key = c(State, Gender, Legal, Indigenous),
            index = Quarter)
prisonquarter

