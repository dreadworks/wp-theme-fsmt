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



all: base css img
base:
	@echo "\nprepare /build if not present"
	mkdir -p build
	mkdir -p build/img

clean:
	-rm -rf build


# css
css: $(BDIR)/style.css
$(BDIR)/style.css:
	@echo "\nupdating stylesheets"
	sass --update "$(CSSDIR)/core.scss:$(BDIR)/style.css"


# images
img:
	@echo "\nsyncing images"
	rsync -az --update --delete $(IMGDIR) $(BDIRIMG)

