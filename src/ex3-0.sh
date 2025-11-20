#!/bin/sh

echo "=== 환경변수 등록 ==="
echo 'export MYENV="Hello Shell"' >> ~/.bashrc

# 적용
source ~/.bashrc

echo "현재 MYENV 값: $MYENV"
echo "이제 Git Bash 새 창을 열어도 유지됩니다."

echo "=== 환경변수 해제 ==="
sed -i '/export MYENV="Hello Shell"/d' ~/.bashrc
echo "해제 완료."
