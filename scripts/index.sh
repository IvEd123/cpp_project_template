#!/bin/bash

# Путь к директории с исходными файлами
SRC_DIR="./src"

# Файл CMakeLists.txt, куда будут записываться пути
CMAKE_FILE="CMakeLists.txt"

# Очистим CMakeLists.txt перед записью
echo "" > $CMAKE_FILE

# Записываем начало формата для CMakeLists.txt
echo "set(SOURCES" >> $CMAKE_FILE

# Ищем все файлы .cpp в директории SRC_DIR и записываем их в CMakeLists.txt
find "$SRC_DIR" -type f -name "*.cpp" | while read -r file; do
    echo "    $file" >> $CMAKE_FILE
done

# Закрываем секцию SOURCES
echo ")" >> $CMAKE_FILE
echo "" >> $CMAKE_FILE

# Записываем начало формата для заголовочных файлов
echo "set(HEADERS" >> $CMAKE_FILE

# Ищем все файлы .h в директории SRC_DIR и записываем их в CMakeLists.txt
find "$SRC_DIR" -type f -name "*.h" | while read -r file; do
    echo "    $file" >> $CMAKE_FILE
done

# Закрываем секцию HEADERS
echo ")" >> $CMAKE_FILE
echo "" >> $CMAKE_FILE

# Добавляем строки для target_sources и target_include_directories
cat <<EOL >> $CMAKE_FILE
target_sources(\${PROJECT_NAME} PRIVATE \${SOURCES} \${HEADERS})
target_include_directories(\${PROJECT_NAME} PUBLIC \$<BUILD_INTERFACE:\${CMAKE_CURRENT_LIST_DIR}>)
EOL

# Сообщение о завершении
echo "CMakeLists.txt успешно создан с файлами из директории $SRC_DIR"