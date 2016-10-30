#!/bin/bash

if [[ $# -eq 0 ]] ; then
	echo 'no name of new feature provided!' 
	echo 'Usage: ./add_new_feature [NAME OF NEW FEATURE]'
	echo '  i.e. ./add_new_feature awesome_feature'
	exit 0
fi

if [[ $# -eq 1 ]] ; then
	echo 'name of new feature is' $1 
fi


echo 'remember about including matrix_'$1'.hpp in matrix/matrix.hpp'

HEADER_FILE_NAME=matrix/matrix_
HEADER_FILE_NAME+=$1
HEADER_FILE_NAME+=.hpp

touch $HEADER_FILE_NAME

echo 'remember about including add_subdirectory(' $1 ') in tst/CMakeLists.txt'

mkdir -p -v tst/$1
touch tst/$1/CMakeLists.txt
touch tst/$1/$1.cpp

