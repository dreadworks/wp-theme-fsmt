#
# FSMT WP THEME
# author: felix hamann <felix@fsmt.dreadworks.de>	
#

# prg
SYNC=rsync -au --delete 

# general
BDIR=build
BDIRIMG=$(BDIR)/img

# src
PHPDIR=src/php
CSSDIR=src/scss
IMGDIR=src/img



all: base php css img
base:
	@echo "\nprepare /build if not present"
	mkdir -p build
	mkdir -p build/img

clean:
	-rm -rf build


# php
php:
	@echo "\nsyncing php scripts"
	$(SYNC) \
		--include '*.php' \
		--exclude '*' \
		$(PHPDIR)/ $(BDIR)


# css
css: $(BDIR)/style.css
$(BDIR)/style.css:
	@echo "\nupdating stylesheets"
	sass --update "$(CSSDIR)/core.scss:$(BDIR)/style.css"


# images
img:
	@echo "\nsyncing images"
	$(SYNC) \
		--include '*.jpg' \
		--include '*.png' \
		--exclude '*' \
		$(IMGDIR)/ $(BDIRIMG)/

