all: output/%.pdf

clean: 
	rm data/processed/penguins.csv output/*

data/processed/penguins.csv: src/01_process_data.R
	cd src; Rscript 01_process_data.R
	
output/%.pdf: src/02_make_plots.R data/processed/penguins.csv 
	cd src; Rscript 02_make_plots.R


