# 사용자가 현재 위치에 있는 폴더 경로 출력 명령어
pwd

# 현재 위치에서 파일, 폴더 목록 출력
ls

# 파일 자세히 확인 / 숨김 파일까지 확인
ls -l
ls -al

# 파일을 시간 순서로 정렬 [전체파일]
ls -alrt

# 디렉토리 생성
mkdir my_dir

# 디렉토리로 이동
cd my_dir

# 최상단 루트 디렉토리로 이동 / 바로 이전 파일로 이동
cd /
cd ..

# 자동완성 -> tab키 

# 절대 경로 폴더로 이동 [슬래시로 시작]
cd /home/yeji/my_dir

# 상대 경로 폴더로 이동 [상위 폴더로 이동] / .은 현재 폴더를 의미
cd ..


# 특정 계정의 home 경로로 이동
cd 

# 직전 위치의 폴더로 이동
cd -

# 비어있는 파일 생성
touch first_file.txt

# 파일 내용 조회 
cat first_file.txt

# 터미널창에 문자열 출력하는 명령어
echo "hello world"

# echo를 통해 파일에 문자열 작성 
# 1. > 하나 사용 -> 덮어쓰기 모드
# 2. >> 두개 사용 -> 추가 모드
echo "hello woorld" > first_file.txt # 입력모드
cat first_file.txt # 내용 다시 확인
echo "bye world" >> first_file.txt # 이어서 작성됨

# 사용한 명령어 조회
history

# 입력 중인 명령어 창 정리
clear

# 파일 이동 / 이름 바꾸기 => mv
# [mv 이동대상 이동된 파일명] => ex) mv a.txt b.txt
# 사실상 이름을 변경한 것 (이름 변경 = 파일 이동 같은 명령어)
mv first_file.txt ../my_dir2 # my_dir에 있던 파일 -> my_dir2로 이동
mv first_file.txt second_file.txt # 이름 변경

# 파일 복사 => cp
# 디렉토리까지 복사 => -r 옵션 추가
cp second_file.txt third_file.txt
cp -r my_dir2 my_dir3 # 디렉토리 복사

# 삭제 => rm
# -r옵션으로 디렉토리까지 삭제 가넝
rm third_file.txt # 파일 삭제
# 리눅스마다 차이가 있으나 삭제할지 말지 물어보는 경우가 있음
# -f 옵션은 묻지 않고 삭제가 가능하게 함 (파일도 마찬가지)
rm -rf my_dir3 # 물어보지 않고 디렉토리 삭제

# 현재 폴더의 모든 파일 삭제
rm -rf *

# cat처럼 파일 출력하는데, 상위 n개 행 조회 => head
# tail은 하위 n개 행 조회
head second_file.txt # 기본 상위 10줄 
head -5 second_file.txt # 상위 5줄
tail second_file.txt # 기본 하위 10줄

# nano 편집기 사용
nano 파일명
# nano 편집기는 배포판마다 설치 여부가 다름
# vi 편집기는 대부분 설치가 되어 있음 -> 많이 사용함

