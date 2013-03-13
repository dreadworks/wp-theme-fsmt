#
# FSMT WP THEME
# author: felix hamann <felix@fsmt.dreadworks.de>	
#

# general
BDIR=build
BDIRIMG=$(BDIR)/img

# src
CSSDIR=src/scss
IMGDIR=src/img



all: base css
base:
	mkdir -p build
	mkdir -p build/img

clean:
	-rm -rf build


# css
css: $(BDIR)/style.css
$(BDIR)/style.css:
	sass --update "$(CSSDIR)/core.scss:$(BDIR)/style.css"


# images
img: $(BDIR)/%.jpg $(BDIR)/%.png

$(BDIR)/%.jpg: $(IMGDIR)/%.jpg
	cp $< $@

$(BDIR)/%.png: $(IMGDIR)/%.png
	cp $< $@

