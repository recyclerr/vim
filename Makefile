REPO_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

all: install

install:
	git submodule update --init --recursive
	ln -s $(REPO_DIR)/vimrc $(HOME)/.vimrc
	ln -s $(REPO_DIR) $(HOME)/.vim

update:
	git submodule update
