
subdirs = main_figures extended_figures supplementary_figures

all: ${subdirs:%=%_all}
%_all:
	cd $* && ${MAKE} all

clean: ${subdirs:%=%_clean}
%_clean:
	cd $* && ${MAKE} clean

realclean: ${subdirs:%=%_realclean}
%_realclean:
	cd $* && ${MAKE} realclean


sync:
	rsync -v -au --delete ./ '/Users/markd/Library/CloudStorage/GoogleDrive-markd@ucsc.edu/Shared drives/Long-read RGASP/NatMethods_RegisteredReport/Stage_2_resubmission/paper-figures'
