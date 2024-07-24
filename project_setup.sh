#!/bin/bash

ml_project() {
	read -rp 'project name? => ' project
	mkdir project
	echo Created "$project" in "$PWD"
	cd project || exit
	touch README.md inference.py .gitignore .env
	cd project || exit
	mkdir model assets
	cd .. || exit
	lsd
}

echo 'Project successfully created'
