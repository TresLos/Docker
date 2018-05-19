#!/bin/sh -e

for url in "$@"; do
	set +x
	tar=${url##*/}
	dir=${tar%.tar.gz}

	set -x
# Standard untar
	wget $url
	tar xzf $tar
	cd $dir

# Standard install
	./configure
	make
	make install

# Return
	cd ..
	rm $tar $dir -r
done
