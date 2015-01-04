include ../Makefile


all:
	cp notes.ly.tmpl notes.ly
	notes="$(wildcard note_*.ly)"; \
	echo $$notes; \
	notes="$$(echo $$notes| tr ' ' '\n' | sort -Vr | tr '\n' ' ')"; \
	for note in  $$notes; do \
		number=$$(echo "$$note" | cut -d'_' -f2 | cut -d'.' -f1); \
		echo >> notes.ly; \
		echo '\include "'$$note'"' >> notes.ly; \
		echo 'title = "Note '$$number'"' >> notes.ly; \
		echo '\include "./score.ly.tmpl"' >> notes.ly; \
	done
	make notes.pdf
	make notes.wav


clean:
	rm -f notes.ly notes.pdf *.midi *.wav

