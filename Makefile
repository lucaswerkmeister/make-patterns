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

# Java

%.class: %.java
	javac $<
bin/%.class: src/%.java
	mkdir -p bin/
	cd src && javac -d ../bin/ $*.java

# Graphviz

%.pdf: %.dot
	dot -Tpdf -o$@ $<
%.svg: %.dot
	dot -Tsvg -o$@ $<
%.png: %.dot
	dot -Tpng -o$@ $<
%.gif: %.dot
	dot -Tgif -o$@ $<
%.jpg: %.dot
	dot -Tjpg -o$@ $<
