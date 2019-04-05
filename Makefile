TEX = pdflatex
TEX_FLAG = -halt-on-error

src := $(wildcard *.tex)

all: 
	$(foreach file,$(src),$(TEX) $(TEX_FLAG) $(file);)

clean::
	@rm *.{pdf,log,aux}