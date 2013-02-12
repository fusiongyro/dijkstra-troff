SOURCES := $(wildcard *.tr)
TARGETS := $(patsubst %.tr,%.pdf,$(SOURCES))

all: $(TARGETS)

%.pdf: %.tr
	groff -e -R -ms $^ | ps2pdf - $@
	#~/stow/bin/eqn $^ | ~/stow/bin/refer -e -p bibliography.refer | ~/stow/bin/troff -ms | ~/stow/bin/dpost | ps2pdf - $@
