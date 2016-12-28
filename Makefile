# LaTeX

%.pdf: %.tex
	latexmk -pdf $<
%.dvi: %.tex
	latexmk -dvi $<
