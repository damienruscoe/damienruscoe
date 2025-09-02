
REVISION?=job-resources/cv/revisions/2025

all: $(REVISION)/cv.md
	make -C $(REVISION)/../
	cp $(REVISION)/../build/standalone.html cv/cv.html
	cp $(REVISION)/../build/Damien\ Ruscoe.pdf cv/Damien\ Ruscoe.pdf
	cp $(REVISION)/cv.md cv/cv.md
	make -C $(REVISION)/../ clean

clean:
	-rm -fr $(REVISION)/../build/*

