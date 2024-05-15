# 문자열 검색 : grep
grep -rin "hello"
ps -ef | grep "nginx" # nginx가 들어가는 프로세스 찾기

# 파일 또는 디렉토리 검색 : find
find . -name "*.sh" # .현재 위치에서 확장자가 .sh파일 이름검색

# 참고
find . -name "*.sh" | grep "hello"
# 이렇게 작성하면 아무것도 안나옴 
# find로 .sh파일만 찾아지고 내용은 가져오지 않기 때문에
# hello 내용이 있는 것 못찾음 
find . -name "*.txt" | xargs grep -n "hello"
# -> | 파이프라인을 통해서 다음 명령어로 전달
# xargs가 입력받은 파일 목록을 한줄씩 읽는 것을 의미

# exec 옵션을 통한 find와 grep
find . -name "*.sh" -exec grep -n "hello" {} \;
# 위에 xargs를 이용한 결과와 같은 비슷한 결과(파일명이 안나옴 )

