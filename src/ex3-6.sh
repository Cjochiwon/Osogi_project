#!/bin/bash

# 인자 수 검사
if [ "$#" -lt 2 ]; then
  echo "오류: 스크립트에 인자 2개 이상을 전달하세요." >&2
  echo "사용법: $0 arg1 arg2 [arg3 ...]" >&2
  exit 1
fi

PYFILE="./ex3-6.py"

if command -v python3 >/dev/null 2>&1; then
  PY=python3
elif command -v python >/dev/null 2>&1; then
  PY=python
else
  echo "오류: python이 시스템에 설치되어 있지 않습니다." >&2
  exit 1
fi

"$PY" "$PYFILE" "$@"
