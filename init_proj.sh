#!/bin/bash


mv templates/CMakeLists.txt.root CMakeLists.txt

mkdir src
touch src/main.cpp
mv templates/CMakeLists.txt.src src/CMakeLists.txt

mv scripts/index.sh .
chmod +x index.sh
