#
# Makefile
#
objects = musikalische_momente
pdf = $(patsubst %, %.pdf, $(objects))
midi = $(wildcard *.midi)
wav = $(wildcard *.wav)
output_format = pdf

.PHONY: all
all: $(pdf)

wav: ${midi}

.PHONY: ${midi}
${midi}:
	timidity --output-24bit -A120 $@ -Ow

%.pdf: %.ly
	sed 's/%(midi) //' $< > "$(basename $@)-with-midi.ly"
	lilypond --output $(basename $@) "$(basename $@)-with-midi.ly"
	rm "$(basename $@)-with-midi.ly"
	lilypond --$(output_format) --output $(basename $@) $<

clean:
	rm -f *.wav *.pdf *.midi
