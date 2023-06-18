SHELL := /usr/bin/env bash

MMIXAL := $(shell which mmixal)
MMIX := $(shell which mmix)

all: P 

P: P.mmo
	$(MMIX) P

P.mmo: P.mms
	$(MMIXAL) -b 120 P.mms


.PHONY: all clean 

clean:
	rm -rf P.mmo
