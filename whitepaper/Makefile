# default variables which can be edited via the terminal
BUILDDIR = ../_build
COMPILER = pdflatex
BIBER = biber
MAKEIDX = makeindex

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

	@$(MAKEIDX) $(BUILDDIR)/main.idx -o main.ind -t main.ilg
	@mv -f main.ind main.ilg $(BUILDDIR)
	@echo "Third pass (via $(MAKEIDX)) done!"

	@$(COMPILER) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILDDIR) $(PROJECTDIR)/$(PROJECT).tex
	@echo "Fourth pass (via $(COMPILER)) done!"

	@$(COMPILER) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILDDIR) $(PROJECTDIR)/$(PROJECT).tex
	@echo "Fifth pass (via $(COMPILER)) done!"

	@echo "Compilation done. Output file can be seen in $(BUILDDIR)"

clean:
	@rm -rf $(BUILDDIR)
	@echo "Removed $(BUILDDIR) directory"

github:
	@ghp-import -n $(BUILDDIR)
	@git push -fq https://${GITHUB_TOKEN}@github.com/$(REPO_SLUG).git gh-pages > /dev/null
