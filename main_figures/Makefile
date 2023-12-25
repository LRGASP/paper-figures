
inpdfs = Figures_Overview.pdf \
       Figures_Challenge1.pdf \
       Figures_Challenge2.pdf \
       Figures_challenge3.pdf
outpdf = ../Figures.pdf

all: ${outpdf}

${outpdf}: ${inpdfs}
	pdfunite ${inpdfs} $@.tmp
	mv -f $@.tmp $@

clean:
	rm -f ${outpdf}

realclean: clean
