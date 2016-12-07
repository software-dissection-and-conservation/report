all: build clean

PDF_VIEWER=evince

build:
	latexmk

read:
	latexmk -pv

watch:
	latexmk -pvc

todo:
	-@ag TODO *.tex

clean:
	latexmk -c

setup:
	-@echo "creating local .latexmkrc"
	-@echo $$"pdf_previewer = 'start ${PDF_VIEWER}';" > .latexmkrc
	-@echo $$"pdf_mode = 1;   # tex -> pdf" >> .latexmkrc
	-@echo "@default_files = ('main.tex');" >> .latexmkrc
	-@echo "  Done!"

PHONY: build read clean
