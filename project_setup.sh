#!/bin/bash

ml_project() {
	read -rp 'project name? => ' project
	mkdir $project
	echo Created "$project" in "$PWD"
	cd $project || exit
	cd ..
	touch README.md inference.py .gitignore .env
	cd $project || exit
	mkdir model assets
	cd model || exit
	touch model.py dataloader.py train.py utils.py __init__.py
	cd .. || exit
	lsd
	cd .. || exit
}

ml_project

echo 'Project successfully created'
