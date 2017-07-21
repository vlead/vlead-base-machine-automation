#SHELL := /bin/bash

CODE_DIR=build/code
DOC_DIR=build/docs
PWD=$(shell pwd)
EXIT_FILE=${PWD}/exit.txt
STATUS=0

all: build

init: 
	./init.sh

build: init
	make -f tangle-make -k all

clean:	
	make -f tangle-make clean

