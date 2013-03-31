#
# FSMT WP THEME
# author: felix hamann <felix@fsmt.dreadworks.de>	
#


#
#	PROGRAMS
#
# rsync
CP := gcp

#
#	DIRECTORIES
#
# general
BDIR=build

# src
PHPDIR := src/php
CSSDIR := src/scss
FNTDIR := src/fonts
IMGDIR := src/img


#
#	DEPENDENCIES
#
all: base php css fonts img
base:
	@echo "\nprepare /build if not present"
	mkdir -p build
	mkdir -p build/img
	mkdir -p build/ttf

clean:
	-rm -rf build


# php
php:
	@echo "\nsyncing php scripts"
	@$(CP) -uv $(PHPDIR)/*.php $(BDIR)/


# css
css: $(BDIR)/style.css
$(BDIR)/style.css:
	@echo "\nupdating stylesheets"
	@sass --update "$(CSSDIR)/core.scss:$(BDIR)/style.css"


# fonts
fonts:
	@echo "\nsyncing fonts"
	@$(CP) -uv			\
		$(FNTDIR)/SourceSansPro/ttf/SourceSansPro-Light.ttf	\
	$(BDIR)/ttf/

# images
img:
	@echo "\nsyncing images"
	@$(CP) -uv				\
		$(IMGDIR)/*.jpg		\
		$(IMGDIR)/*.png 	\
	$(BDIR)/img/
