
inpdfs = Figures_Overview.pdf \
	Figures_Challenge1.pdf \
	Figures_Challenge2.pdf \
	Figures_Challenge3.pdf \
	Figures_Validation.pdf

splitdir = ../main_figures_split
splitpdfs = ${splitdir}/Figure1.pdf \
            ${splitdir}/Figure2.pdf \
            ${splitdir}/Figure3.pdf \
            ${splitdir}/Figure4.pdf \
            ${splitdir}/Figure5.pdf

outpdf = ../Figures.pdf

all: ${outpdf} ${splitpdfs}

${outpdf}: ${inpdfs}
	pdfunite ${inpdfs} $@.tmp
	mv -f $@.tmp $@

define cpsplit
	mkdir -p $(dir $@)
	cp -f $< $@.tmp
	mv -f $@.tmp $@
endef

${splitdir}/Figure1.pdf: Figures_Overview.pdf
	${cpsplit}

${splitdir}/Figure2.pdf: Figures_Challenge1.pdf
	${cpsplit}

${splitdir}/Figure3.pdf: Figures_Challenge2.pdf
	${cpsplit}

${splitdir}/Figure4.pdf: Figures_Challenge3.pdf
	${cpsplit}

${splitdir}/Figure5.pdf: Figures_Validation.pdf
	${cpsplit}

img_check_tmp = ${HOME}/tmp/lrgasp-img-check
check-images: ${inpdfs:%=${img_check_tmp}/%.tmp/done}

${img_check_tmp}/%.tmp/done: %
	rm -rf $(dir $@)
	mkdir -p $(dir $@)
	pdfimages $< $(dir $@)/img.

clean:

realclean: clean
	rm -f ${outpdf}
