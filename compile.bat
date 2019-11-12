set BUILDDIR=_build
set COMPILER=pdflatex
set BIBER=biber

set PROJECTDIR=whitepaper
set PROJECT=main
set BIBLIOGRAPHY=bibliography

@echo "Building %PROJECT% in %BUILDDIR% directory using %COMPILER%..."
@echo "Creating %BUILDDIR%directory..."
@mkdir %BUILDDIR%\whitepaper\chapters >NUL
@mkdir %BUILDDIR%\whitepaper\header >NUL

@%COMPILER% -interaction=nonstopmode -output-directory="%BUILDDIR%" "%PROJECTDIR%/%PROJECT%.tex" >NUL
@echo "First pass (via %COMPILER%) done!"

copy /Y %PROJECTDIR%\%BIBLIOGRAPHY%.bib %BUILDDIR%
@%BIBER% --output_directory=%BUILDDIR% %PROJECT% >NUL
@echo "Second pass (via %BIBER%) done!"

@%COMPILER% -interaction=nonstopmode -output-directory=%BUILDDIR% %PROJECTDIR%/%PROJECT%.tex >NUL
@echo "Third pass (via %COMPILER%) done!"

@%COMPILER% -interaction=nonstopmode -halt-on-error -output-directory=%BUILDDIR% %PROJECTDIR%/%PROJECT%.tex >NUL
@echo "Fourth pass (via %COMPILER%) done!"

@echo "Compilation done. Output file can be seen in %BUILDDIR)"

