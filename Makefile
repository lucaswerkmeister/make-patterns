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
%.xz: %
	xz <$< >$@
%.bz2: %
	bzip2 <$< >$@

# Ceylon

%.sha1: %
	printf '%s' "$$(sha1sum $< | cut -d' ' -f1)" > $@
