
all: build convert clean-junk

build:
	pdflatex src/resume.tex

convert: build
	convert -density 300 -quality 90 -adjoin resume.pdf resume.png

clean-junk:
	$(RM) resume.aux resume.log resume.out texput.log

clean: clean-junk
	$(RM) resume.pdf resume*.png

