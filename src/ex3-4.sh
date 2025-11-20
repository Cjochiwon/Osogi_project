#!/bin/bash
scores=()

while true; do
    echo "==================="
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "==================="
    read -p "선택 (1~5): " choice

    case $choice in
        1)
            read -p "추가할 점수 입력 (0~100): " score
            if [ $score -ge 0 ] && [ $score -le 100 ]; then
                scores+=($score)
                echo "점수 $score 추가됨"
            else
                echo "0~100 범위의 점수를 입력하세요."
            fi
            ;;
        2)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                echo "모든 점수: ${scores[@]}"
            fi
            ;;
        3)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "점수가 없습니다."
            else
                total=0
                for s in "${scores[@]}"; do total=$((total + s)); done
                avg=$((total / ${#scores[@]}))
                echo "평균 점수: $avg"
            fi
            ;;
        4)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "점수가 없습니다."
            else
                total=0
                for s in "${scores[@]}"; do total=$((total + s)); done
                avg=$((total / ${#scores[@]}))
                if [ $avg -ge 90 ]; then avg_grade="A"; else avg_grade="B"; fi
                echo "평균 점수: $avg → 평균 등급: $avg_grade"
            fi
            ;;
        5)
            echo "프로그램 종료"
            break
            ;;
        *)
            echo "1~5 사이의 값을 입력하세요."
            ;;
    esac
done
