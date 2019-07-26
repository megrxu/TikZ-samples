TEX = pdflatex
TEX_FLAG = -halt-on-error

src := $(wildcard *.tex)
file := $(src:.tex=)

all: 
	$(foreach file,$(src),$(TEX) $(TEX_FLAG) $(file);)

png: 
	$(foreach file,$(file),convert -density 300 $(file).pdf $(file).png ;)

clean::
	@rm *.{pdf,log,aux,png}