# default variables which can be edited via the terminal
BUILDDIR = ../_build
COMPILER = pdflatex
BIBER = biber

PROJECTDIR = .
PROJECT = main
BIBLIOGRAPHY = bibliography

latex:
	@echo "Building $(PROJECT) in $(BUILDDIR) directory using $(COMPILER)..."
	@echo "Creating $(BUILDDIR) directory..."
	@mkdir -p $(BUILDDIR)/chapters
	@mkdir -p $(BUILDDIR)/header

	# latex bibtex latex latex
	@$(COMPILER) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILDDIR) $(PROJECTDIR)/$(PROJECT).tex
	@echo "First pass (via $(COMPILER)) done!"

	@cp $(PROJECTDIR)/$(BIBLIOGRAPHY).bib $(BUILDDIR)
	@$(BIBER) --output_directory=$(BUILDDIR) $(PROJECT)
	@echo "Second pass (via $(BIBER)) done!"

	@$(COMPILER) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILDDIR) $(PROJECTDIR)/$(PROJECT).tex
	@echo "Third pass (via $(COMPILER)) done!"

	@$(COMPILER) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILDDIR) $(PROJECTDIR)/$(PROJECT).tex
	@echo "Fourth pass (via $(COMPILER)) done!"

	@echo "Compilation done. Output file can be seen in $(BUILDDIR)"

clean:
	@rm -rf $(BUILDDIR)
	@echo "Removed $(BUILDDIR) directory"
