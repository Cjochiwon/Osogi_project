#!/bin/bash

while true; do
    echo "======================"
    echo "1) 사용자 정보"
    echo "2) CPU 사용률 확인"
    echo "3) 메모리 사용량 확인"
    echo "4) 디스크 사용량 확인"
    echo "5) 종료"
    echo "======================"
    read -p "메뉴 선택: " menu

    case $menu in
        1)
            echo "[사용자 정보]"
            whoami
            uname -a
            ;;
        2)
            echo "[CPU 사용률]"
            ps -eo pcpu | awk 'NR>1 {sum+=$1} END {printf "CPU 평균 사용률: %.2f%%\n", sum/NR}'
            ;;
        3)
            echo "[메모리 사용량]"
            free -m
            ;;
        4)
            echo "[디스크 사용량]"
            df -h .
            ;;
        5)
            echo "프로그램 종료"
            exit 0
            ;;
        *)
            echo "1~5 중에서 선택하세요."
            ;;
    esac
done
