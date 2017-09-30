# Create a pdf from a single source file

SOURCE=oxford
LATEX_FLAGS=

all:
	pdflatex $(LATEX_FLAGS) $(SOURCE).tex

# Make with bibtex
full:
	pdflatex $(LATEX_FLAGS) $(SOURCE).tex
	bibtex $(basename $(SOURCE))
	pdflatex $(LATEX_FLAGS) $(SOURCE).tex
	pdflatex $(LATEX_FLAGS) $(SOURCE).tex

read:
	evince $(SOURCE).pdf

clean:
	rm -f $(basename $(SOURCE)).{pdf,aux,log,bbl,blg,lof,lot,toc}

pres:
	/home/markus/src/dspdfviewer/dspdfviewer $(SOURCE).pdf

