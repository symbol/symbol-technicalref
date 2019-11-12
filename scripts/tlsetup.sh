#!/usr/bin/env bash

# update package repository and install TexLive distribution
sudo apt-get -qq update
sudo apt-get install -y --no-install-recommends texlive-fonts-recommended \
	texlive-latex-extra \
	texlive-fonts-extra \
	dvipng \
	texlive-latex-recommended \
	texlive-xetex \
	lmodern \
	texlive-bibtex-extra

# install additional pacakges
# 1. decompression tool to extract LaTex packages later on
# 2. biber for .bib compilation
sudo apt-get install -y xzdec
sudo apt-get install -y biber
