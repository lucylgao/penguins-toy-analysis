all: output/fig_01_bill_species.pdf

clean: 
	rm data/processed/penguins.csv output/fig_01_bill_species.pdf

data/processed/penguins.csv: src/01_process_data.R
	cd src; Rscript 01_process_data.R
	
output/fig_01_bill_species.pdf: src/02_make_plots.R data/processed/penguins.csv 
	cd src; Rscript 02_make_plots.R

