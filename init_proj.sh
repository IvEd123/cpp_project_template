#!/bin/bash

mkdir src

wget https://raw.githubusercontent.com/IvEd123/cpp_project_template/refs/heads/main/scripts/index.sh -O index.sh
chmod +x index.sh

wget https://raw.githubusercontent.com/IvEd123/cpp_project_template/refs/heads/main/templates/CMakeLists.txt.root -O CMakeLists.txt

cd src
wget https://raw.githubusercontent.com/IvEd123/cpp_project_template/refs/heads/main/templates/CMakeLists.txt.src -O CMakeLists.txt

