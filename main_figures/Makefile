
inpdfs = Figures_Overview.pdf \
	Figures_Challenge1.pdf \
	Figures_Challenge2.pdf \
	Figures_Challenge3.pdf \
	Figures_Validation.pdf
outpdf = ../Figures.pdf

all: ${outpdf}

${outpdf}: ${inpdfs}
	pdfunite ${inpdfs} $@.tmp
	mv -f $@.tmp $@

clean:

realclean: clean
	rm -f ${outpdf}
