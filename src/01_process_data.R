library(dplyr)
library(forcats)
library(readr)
library(stringr)
library(here)

### Read in raw data
penguins_raw <- read_csv(
    here::here("data", "raw", 
               "penguins_raw.csv")
)

### Filter and rename columns 
penguins <- penguins_raw %>% 
    select(Species, Island, `Culmen Length (mm)`, 
           `Culmen Depth (mm)`, `Flipper Length (mm)`, 
           `Body Mass (g)`, Sex) %>% 
    rename(species = Species, island = Island, 
           bill_length_mm = `Culmen Length (mm)`, 
           bill_depth_mm = `Culmen Depth (mm)`,
           flipper_length_mm = `Flipper Length (mm)`, 
           body_mass_g = `Body Mass (g)`, 
           sex = Sex)

### Convert characters to factors 
penguins <- penguins %>% 
  mutate(species = str_split_fixed(species, " ", 3)[, 1], 
         sex = str_to_title(sex)) %>% 
  mutate(across(where(is.character), as.factor))

### Write processed data 
write_csv(penguins, 
          file=here::here("data", "processed", 
                          "penguins.csv"))