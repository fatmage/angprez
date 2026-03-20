# Main file name (without .tex)
MAIN = prez

# LaTeX compiler
LATEX = pdflatex

# Flags
LATEXFLAGS = -interaction=nonstopmode -halt-on-error

# Default target
all: $(MAIN).pdf

# Build PDF (run twice for references)
$(MAIN).pdf: $(MAIN).tex
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex

# Clean auxiliary files
clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb

# Clean everything including PDF
distclean: clean
	rm -f $(MAIN).pdf

# Rebuild from scratch
rebuild: distclean all
