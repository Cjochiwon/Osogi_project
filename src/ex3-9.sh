#!/bin/bash

DB="DB.txt"

while true; do
    echo "===================="
    echo "1) 팀원 정보 추가"
    echo "2) 팀원과 한 일 기록"
    echo "3) 팀원 검색"
    echo "4) 수행 내용 검색"
    echo "5) 종료"
    echo "===================="
    read -p "선택: " menu

    case $menu in
        1)
            read -p "이름 입력: " name
            read -p "생일 또는 전화번호: " info
            echo "[TEAM] $name / $info" >> $DB
            echo "추가 완료."
            ;;
        2)
            read -p "날짜 입력 (YYYY-MM-DD): " date
            read -p "내용 입력: " work
            echo "[WORK] $date / $work" >> $DB
            echo "기록 완료."
            ;;
        3)
            read -p "검색할 팀원 이름: " keyword
            echo "검색 결과:"
            grep "^\[TEAM\].*$keyword" $DB
            ;;
        4)
            read -p "검색할 날짜(YYYY-MM-DD): " date
            echo "검색 결과:"
            grep "^\[WORK\].*$date" $DB
            ;;
        5)
            echo "프로그램 종료"
            exit 0
            ;;
        *)
            echo "1~5 중 선택하세요."
            ;;
    esac
done
