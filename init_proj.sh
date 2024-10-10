#!/bin/bash


mv templates/CMakeLists.txt.root CMakeLists.txt

mkdir src
touch src/main.cpp
mv templates/CMakeLists.txt.src src/CMakeLists.txt

chmod +x scripts/*.sh
mv scripts/*.sh .

rm -rf templates scripts 
rm -rf .git 
rm .gitignore init_proj.sh