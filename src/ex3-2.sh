#!/bin/bash

# ex3-2.sh - bc 없이 실수 계산

echo "실수 값을 입력하세요 (2개 이상, 공백으로 구분):"
read -a numbers

for x in "${numbers[@]}"
do
    y=$(awk "BEGIN{printf \"%.4f\", 0.5 * $x * $x}")
    echo "x=$x → y=$y"
done
