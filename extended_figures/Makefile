DOCS = Extended_Data_Figures
NOCAP_DOCS_PDF = ${DOCS}.no-captions.pdf
DEPENDS = $(wildcard challenge1_src/*.pdf) \
	 $(wildcard challenge1_src/*/*.pdf) \
	 $(wildcard challenge2_src/*.pdf) \
	 $(wildcard challenge2_src/*/*.pdf) \
	 $(wildcard challenge3_src/*.pdf) \
	 $(wildcard challenge3_src/*/*.pdf) \
	 $(wildcard validation_src/*.pdf) \
	 $(wildcard validation_src/*/*.pdf)

include ../figure-rules.mk

splitdir = ../extended_figures_split
pagenums = 1 2 3 4 5 6 7 8 9
spliteps = ${pagenums:%=${splitdir}/eps/Extended_Data_Fig%.eps}
splitpfs = ${pagenums:%=${splitdir}/pdf/Extended_Data_Fig%.pfs}

# split as eps by submission
all:: ${spliteps} ${splitpdf}

${splitdir}/eps/Extended_Data_Fig%.eps: ${splitdir}/pdf/Extended_Data_Fig%.pdf
	@mkdir -p $(dir $@)
	pdftops -eps $< $@.tmp
	mv -f $@.tmp $@

${splitdir}/pdf/Extended_Data_Fig%.pdf: ${NOCAP_DOCS_PDF}
	@mkdir -p $(dir $@)
	pdfseparate -f $* -l $* $< ${splitdir}/tmp%d.pdf
	pdfcrop ${splitdir}/tmp$*.pdf $@.tmp
	mv -f $@.tmp $@
	rm -rf ${splitdir}/tmp$*.pdf

%.no-captions.pdf: %.tex ../figure-rules.mk ../figure-defs.tex ${DEPENDS}
	@mkdir -p ${tmpDir}
	pdflatex ${latexopts} -jobname $*.no-captions.tmp "\\nonstopmode\\def\\nocaptiontrue{}\\input $<" </dev/null
	mv -f ${tmpDir}/$*.no-captions.tmp.pdf $@

clean::
	rm -f ${NOCAP_DOCS_PDF}

realclean::
	rm -f ${splitfigs}
