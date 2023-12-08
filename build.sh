#! /bin/sh

INSTALL_PATH="`pwd`/../../build/module/json-c"

if [ -d ${INSTALL_PATH} ]; then
	rm -fr ${INSTALL_PATH}
fi

mkdir -p ${INSTALL_PATH}

if [ -d json-c-build ]; then
	rm -fr json-c-build
fi

mkdir json-c-build
cd json-c-build
cmake -DCMAKE_INSTALL_PREFIX=${INSTALL_PATH} ..
make
make install

export LIBRARY_PATH=${INSTALL_PATH}/lib:$LIBRARY_PATH
export C_INCLUDE_PATH=${INSTALL_PATH}/include:$C_INCLUDE_PATH