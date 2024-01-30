
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

img_check_tmp = ${HOME}/tmp/lrgasp-img-check
check_images: ${inpdfs:%=${img_check_tmp}/%.tmp/done}

${img_check_tmp}/%.tmp/done: %
	rm -rf $(dir $@)
	mkdir -p $(dir $@)
	pdfimages $< $(dir $@)/img.

clean:

realclean: clean
	rm -f ${outpdf}
