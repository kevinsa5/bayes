
all: report.pdf
	evince report.pdf

report.pdf: report.tex
	pdflatex report.tex

report.tex: report.rnw model_1.rnw model_2.rnw
	Rscript -e "library(knitr); knit('./report.rnw')"

clean:
	-rm report.tex *.aux *.log *.tdo *.toc
	-rm -r figure
