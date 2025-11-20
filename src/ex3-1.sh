#!/bin/sh

# 인자 확인
if [ $# -ne 2 ]; then
    echo "사용법: $0 숫자1 숫자2"
    exit 1
fi

a=$1
b=$2

echo "입력값: $a, $b"
echo "덧셈: $((a + b))"
echo "뺄셈: $((a - b))"
echo "곱셈: $((a * b))"
echo "나눗셈: $((a / b))"
