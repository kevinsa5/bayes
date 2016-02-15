
all: report.pdf
	evince report.pdf

report.pdf: report.tex
	pdflatex report.tex

report.tex: report.rnw
	Rscript -e "library(knitr); knit('./report.rnw')"

clean:
	rm report.tex *.aux *.log
	rm -r figure
