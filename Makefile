# LaTeX

%.pdf: %.tex
	latexmk -pdf $<
%.dvi: %.tex
	latexmk -dvi $<

# Inkscape

%.pdf: %.svg
	inkscape -f $< -A $@

# compression

%.gz: %
	gzip <$< >$@
%: %.gz
	gunzip <$< >$@
%.xz: %
	xz <$< >$@
%: %.xz
	unxz <$< >$@
%.bz2: %
	bzip2 <$< >$@
%: %.bz2
	bunzip2 <$< >$@
