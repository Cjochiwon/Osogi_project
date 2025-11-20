#!/bin/bash

# ex3-3.sh

echo "과목명과 점수를 입력하세요."
echo "입력 예시: 국어 95 영어 88 수학 100"
echo "(과목명과 점수 쌍을 여러 개 입력하세요.)"

read -a inputs   # 배열로 전체 입력 받기

if (( ${#inputs[@]} % 2 != 0 )); then
    echo "과목명과 점수는 쌍으로 입력해야 합니다."
    exit 1
fi

subjects=()
scores=()
total=0

echo "각 과목 등급:"
for ((i=0; i<${#inputs[@]}; i+=2)); do
    subject="${inputs[i]}"
    score="${inputs[i+1]}"

    # 점수 유효성 검증
    if ! [[ $score =~ ^[0-9]+$ ]] || [ $score -lt 0 ] || [ $score -gt 100 ]; then
        echo "$subject 점수가 0~100 범위가 아니거나 유효하지 않습니다."
        exit 1
    fi

    subjects+=("$subject")
    scores+=("$score")
    total=$(( total + score ))

    # 등급 계산
    if [ $score -ge 90 ]; then
        grade="A"
    else
        grade="B"
    fi

    echo "$subject: 점수=$score → 등급=$grade"
done

# 평균
count=${#scores[@]}
avg=$(( total / count ))

if [ $avg -ge 90 ]; then
    avg_grade="A"
else
    avg_grade="B"
fi

echo "---------------------------"
echo "평균 점수: $avg"
echo "평균 등급: $avg_grade"
