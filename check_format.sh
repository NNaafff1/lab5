#!/bin/bash


expected_format=5

files=$(find . -type f -name "*.txt")

for file in $files

do
    if ! grep -q ".\{$expected_format,\}" "$file"; then
        echo "Файл $file не соответствует формату."
        exit 1
    fi
done

echo "Все файлы соответствуют формату."
exit 0

