#!/usr/bin/env sh

# check if TL is already present
export PATH=/tmp/texlive/bin/x86_64-linux:$PATH
if ! command -v latexmk > /dev/null; then
	# download TL
	wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

	# extract and install a minimal system
	tar -xzf install-tl-unx.tar.gz
	cd install-tl-20*
	./install-tl --profile=../texlive/texlive.profile
	cd ..
fi

# install configured packages
tlmgr install $(sed 's/\s*#.*//;/^\s*$/d' texlive/texlive_packages.properties)

# disable backups to minimize cache size
tlmgr option -- autobackup 0

# update TL and all installed packages
tlmgr update --self --all --no-auto-install
