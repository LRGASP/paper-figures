.SECONDARY:
.PHONY: all clean realclean
tmpDir = tex.tmp

all:: ${DOCS:%=../%.pdf}

latexopts = -file-line-error -halt-on-error -output-directory=${tmpDir}

../%.pdf: %.tex Makefile ../figure-rules.mk ../figure-defs.tex ${DEPENDS} 
	@mkdir -p ${tmpDir}
	pdflatex ${latexopts} -jobname $*.tmp \\nonstopmode\\input $< </dev/null
	mv -f ${tmpDir}/$*.tmp.pdf $@

clean:
	rm -rf ${tmpDir}

realclean: clean
	rm -f ${DOCS:%=../%.pdf}
