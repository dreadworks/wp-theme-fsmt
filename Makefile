#
# FSMT WP THEME
# author: felix hamann <felix@fsmt.dreadworks.de>	
#


#
#	PROGRAMS
#
# rsync
CP := cp

#
#	DIRECTORIES
#
# general
BDIR=build

# src
PHPDIR := src/php
JSDIR  := src/js
CSSDIR := src/scss
FNTDIR := src/fonts
IMGDIR := src/img

# javascript source files
JS_SRC := \
#	$(JSDIR)/ext/analytics.js
#	$(JSDIR)/lib/jquery-2.0.0.js	\
#	$(JSDIR)/core.js


#
#	DEPENDENCIES
#
all: base php css fonts img
base:
	@if [ ! -d "build" ]; then		\
		echo "create build dir";	\
		mkdir -p build;				\
		mkdir -p build/img;			\
		mkdir -p build/ttf;			\
	fi

clean:
	-rm -rf build


# php
php:
	@$(CP) -uv $(PHPDIR)/*.php $(BDIR)/

# js
js: $(BDIR)/fsmt.js
$(BDIR)/fsmt.js: $(JS_SRC)
	@cat $(JS_SRC) > $(BDIR)/fsmt.js
	@echo "overwrite $(BDIR)/fsmt.js"

# css
css: $(BDIR)/style.css
$(BDIR)/style.css: $(CSSDIR)/*.scss
	@sass --update "$(CSSDIR)/core.scss:$(BDIR)/style.css"


# fonts
fonts:
	@$(CP) -uv			\
		$(FNTDIR)/SourceSansPro/ttf/SourceSansPro-ExtraLight.ttf	\
		$(FNTDIR)/SourceSansPro/ttf/SourceSansPro-Regular.ttf		\
	$(BDIR)/ttf/

# images
img:
	@$(CP) -uv				\
		$(IMGDIR)/*.jpg		\
	$(BDIR)/img/
