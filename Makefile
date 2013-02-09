SOURCES := $(wildcard *.tr)
TARGETS := $(patsubst %.tr,%.pdf,$(SOURCES))

all: $(TARGETS)

%.pdf: %.tr
	groff -e -R -ms $^ | ps2pdf - $@
