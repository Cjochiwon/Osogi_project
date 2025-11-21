#!/usr/bin/env python3
import sys

def main():
    if len(sys.argv) - 1 < 2:
        print("오류: 인자를 2개 이상 입력하세요.", file=sys.stderr)
        print(f"사용법: {sys.argv[0]} arg1 arg2 [arg3 ...]", file=sys.stderr)
        sys.exit(1)

    print("=== 실행 시작 ===")

    # 입력된 인자 개수 출력
    arg_count = len(sys.argv) - 1
    print(f"입력된 인자 개수: {arg_count}")

    # 각 인자 내용을 하나씩 출력
    for i, arg in enumerate(sys.argv[1:], start=1):
        print(f"인자 {i}: {arg}")

    print("=== 실행 끝 ===")

if __name__ == "__main__":
    main()
