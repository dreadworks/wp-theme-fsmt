#
# FSMT WP THEME
# author: felix hamann <felix@fsmt.dreadworks.de>	
#


#
#	PROGRAMS
#
# rsync
SYNC := rsync -au --delete
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
	$(SYNC) \
		--include '*.php'	\
		--exclude '*'		\
		$(PHPDIR)/ $(BDIR)


# css
css: $(BDIR)/style.css
$(BDIR)/style.css:
	@echo "\nupdating stylesheets"
	sass --update "$(CSSDIR)/core.scss:$(BDIR)/style.css"


# fonts
fonts:
	@echo "\nsyncing fonts"
	@echo $(CP) $(CPFLAGS) foo
#	@find $(FNTDIR) \
#		-name "SourceSansPro-Light.ttf"		\
#		-o -name "SourceSansPro-Regular.ttf"	\
#	| xargs $(CP) $(CPFLAGS) $(BDIR)/ttf/			\
#	|| cat src/make/cperror.txt; exit 2;


# images
img:
	@echo "\nsyncing images"
	$(SYNC) \
		--include '*.jpg'	\
		--include '*.png'	\
		--exclude '*'		\
		$(IMGDIR)/ $(BDIR)/img/
