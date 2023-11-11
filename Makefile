PHYS=$(wildcard Физика/src/*)
PHYS_PDF=$(patsubst Физика/src/%.md, Физика/res/%.pdf, $(PHYS))

MATH=$(wildcard Математика/src/*)
MATH_PDF=$(patsubst Математика/src/%.md, Математика/res/%.pdf, $(MATH))

all: $(PHYS_PDF) $(MATH_PDF)

Физика/res/%.pdf: Физика/src/%.md
	marp --html --allow-local-files --pdf $< -o $@

Математика/res/%.pdf: Математика/src/%.md
	marp --html --allow-local-files --pdf $< -o $@

clean:
	rm -f Физика/res/*
	rm -f Математика/res/*