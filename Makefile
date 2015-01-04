#
# Makefile
#
objects = phrases $(basename $(wildcard opus-*.ly)) $(basename $(wildcard etude-*.ly))
pdf = $(patsubst %, %.pdf, $(objects))
output_format = pdf


all:
	make objects

objects: ${objects}

${objects}:
	make "$@.pdf"
	make "$@.wav"

pdf: ${pdf}

%.pdf: %.ly
	lilypond --$(output_format) $<

%.wav: %.ly
	for file in $(wildcard $(basename $@)*.midi); do \
		timidity --output-24bit -A120 $$file -Ow; \
	done

clean:
	rm -f *.pdf *.midi *.wav
	make -C notes clean

.PHONY: notes
notes:
	make -C notes

