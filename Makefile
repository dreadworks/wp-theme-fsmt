#
# FSMT WP THEME
# author: felix hamann <felix@fsmt.dreadworks.de>	
#

# CC
CSSCC=sass

# general
BDIR=build
BDIRIMG=$(BDIR)/img

# src
CSSDIR=src/css
SCSSDIR=$(CSSDIR)/scss
IMGDIR=src/img



all: base css img
base:
	mkdir -p build
	mkdir -p build/img


# css
css: $(BDIR)/style.css
$(BDIR)/style.css: $(CSSDIR)/style.css
	cp $(CSSDIR)/style.css $(BDIR)/

$(CSSDIR)/style.css: $(SCSSDIR)/core.scss
	$(CSSCC) --update $(SCSSDIR)/core.scss $(CSSDIR)/style.css

# images
img: $(BDIR)/%.jpg $(BDIR)/%.png

$(BDIR)/%.jpg $(IMGDIR)/%.jpg
	cp $< $@

$(BDIR)/%.png $(IMGDIR)/%.png
	cp $< $@

