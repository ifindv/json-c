#! /bin/sh

if [ -d json-c-build ]; then
	rm -fr json-c-build
fi

mkdir json-c-build
cd json-c-build
cmake ..
make

