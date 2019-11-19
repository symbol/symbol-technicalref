set BUILDDIR=..\_build
set COMPILER=pdflatex
set BIBER=biber
set MAKEIDX=makeindex

set PROJECT=main
set BIBLIOGRAPHY=bibliography

@echo "Building %PROJECT% in %BUILDDIR% directory using %COMPILER%..."
@echo "Creating %BUILDDIR% directory..."
@mkdir %BUILDDIR%\chapters >NUL
@mkdir %BUILDDIR%\header >NUL

@%COMPILER% -interaction=nonstopmode -halt-on-error -output-directory="%BUILDDIR%" "%PROJECT%.tex" >NUL
@echo "First pass (via %COMPILER%) done!"

@copy /Y %BIBLIOGRAPHY%.bib %BUILDDIR%
@%BIBER% --output_directory=%BUILDDIR% %PROJECT% >NUL
@echo "Second pass (via %BIBER%) done!"

@%MAKEIDX% %BUILDDIR%\main.idx -o main.ind -t main.ilg
@move /Y main.ind %BUILDDIR%
@move /Y main.ilg %BUILDDIR%
@echo "Third pass (via %MAKEIDX%) done!"

@%COMPILER% -interaction=nonstopmode -halt-on-error -output-directory=%BUILDDIR% %PROJECT%.tex >NUL
@echo "Fourth pass (via %COMPILER%) done!"

@%COMPILER% -interaction=nonstopmode -halt-on-error -output-directory=%BUILDDIR% %PROJECT%.tex >NUL
@echo "Fifth pass (via %COMPILER%) done!"

@echo "Compilation done. Output file can be seen in %BUILDDIR%"

