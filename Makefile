SOURCES := $(wildcard *.tr)
TARGETS := $(patsubst %.tr,%.pdf,$(SOURCES))

all: $(TARGETS)

%.pdf: %.tr
	groff -R -ms $^ | ps2pdf - $@
