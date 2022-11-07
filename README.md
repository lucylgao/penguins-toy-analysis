## Palmer Penguins Toy Analysis (UNDER CONSTRUCTION)

This repository will eventually contain an end-to-end toy analysis that starts with very basic pre-processing of the raw Palmer Penguins data, then makes two plots of bill length vs bill depth visualizing the within-species bill length-depth relationship and the overall bill length-depth relationship to demonstrate Simpson's Paradox. 

### Authors 
Lucy Gao 

### Dependencies 
The code was developed under R version 4.1.2 and uses the following packages: readr_2.1.2, dplyr_1.0.9, forcats_0.5.1, here_1.0.1, stringr_1.4.0, TO_FILL_IN ...     

## Description of Repository Contents

To run the analysis end-to-end, run src/01_process_data.R, then TO_FILL_IN ... 

The code throughout assumes that the user is using the here package. If you're unfamiliar with that package, then just make sure to make an RStudio Project out of the code in this repository and always open that project before running this code.

### data 

- raw: Contains raw data in penguins_raw.csv

- processed: Contains processed data in penguins.csv (created by src/01_process_data.R) 

### src 

  - 01_process_data.R: Takes raw/penguins_raw.csv, subsets variables, cleans up column names, and writes to data/processed/penguins.csv 

### output

TO_FILL_IN


