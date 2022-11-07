# CODE ATTRIBUTION: 
# Plotting code is from 
# https://allisonhorst.github.io/palmerpenguins/articles/examples.html

# Assumes 01_process_data.R has been run and
# processed data is stored in data/processed/penguins.csv

library(ggplot2)
library(here)
library(readr)

penguins <- read_csv(here::here("data", "processed", 
             "penguins.csv"))

# Make a plot of bill length vs depth
# Coloured by species 
# Plotted linear line of best fit within each species
bill_len_dep <- ggplot(data = penguins,
                       aes(x = bill_length_mm,
                           y = bill_depth_mm,
                           group = species)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 3,
             alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, aes(color = species)) +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(title = "Penguin bill dimensions",
       subtitle = "Bill length and depth for Adelie, Chinstrap and Gentoo Penguins at Palmer Station LTER",
       x = "Bill length (mm)",
       y = "Bill depth (mm)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme(legend.position = c(0.85, 0.15),
        plot.title.position = "plot",
        plot.caption = element_text(hjust = 0, face= "italic"),
        plot.caption.position = "plot")

ggsave(bill_len_dep, 
       file = here::here("output", 
                         "fig_01_bill_species.pdf"))

# Make a plot of bill length vs depth
# Plotted linear line of best fit across all penguins
bill_no_species <- ggplot(data = penguins,
                          aes(x = bill_length_mm,
                              y = bill_depth_mm)) +
  geom_point() +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(title = "Penguin bill dimensions (omit species)",
       subtitle = "Palmer Station LTER",
       x = "Bill length (mm)",
       y = "Bill depth (mm)") +
  theme(plot.title.position = "plot",
        plot.caption = element_text(hjust = 0, face= "italic"),
        plot.caption.position = "plot") +
  geom_smooth(method = "lm", se = FALSE, color = "gray50")

ggsave(bill_no_species, 
       file = here::here("output", 
                         "fig_02_bill_no_species.pdf"))