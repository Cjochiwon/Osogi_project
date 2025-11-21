#!/bin/bash

if [ ! -d "./DB" ]; then
    echo "DB 폴더가 없어 새로 생성합니다."
    mkdir DB
else
    echo "DB 폴더가 이미 존재합니다."
fi

echo "DB 폴더에 파일 5개 생성:"
for i in {1..5}; do
    echo "Sample file $i" > DB/file$i.txt
done

echo "DB 폴더를 db_files.tar.gz 로 압축합니다."
tar -czf db_files.tar.gz DB

if [ ! -d "./train" ]; then
    mkdir train
fi

echo "train 폴더에 링크 생성:"
for f in DB/*.txt; do
    ln -sf "../$f" "train/$(basename $f)"
done

echo "작업 완료!"
