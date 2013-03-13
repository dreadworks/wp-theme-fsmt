#
# FSMT WP THEME
# author: felix hamann <felix@fsmt.dreadworks.de>	
#

# general
BDIR=build
BDIRIMG=$(BDIR)/img

# src
CSSDIR=src/css
SCSSDIR=$(CSSDIR)/scss
IMGDIR=src/img



all: css img

# css
css: $(BDIR)/style.css
$(BDIR)/style.css: $(CSSDIR)/style.css
	cp $(CSSDIR)/style.css $(BDIR)/

# images
img: $(BDIR)/%.jpg $(BDIR)/%.png



