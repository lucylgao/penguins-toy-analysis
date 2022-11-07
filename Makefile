all: data/processed/penguins.csv 

clean: rm data/processed/penguins.csv 

data/processed/penguins.csv: src/01_process_data.R
	cd src; Rscript 01_process_data.R