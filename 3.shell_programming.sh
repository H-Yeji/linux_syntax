# script 파일 생성
touch myscript.sh

# sh파일 실행 (실행 권한 추가해야 함)
./test.sh 

# 실습
1. 시작할 때 script start 문구 출력
2. 홈디렉토리에서 my_dir4 생성
3. my_dir4에서 file1.txt, file2.txt 파일 생성
4. file1.txt에서 “hello file1”입력, file2.txt에 hello file2” 입력
5. file1은 file1_backup.txt로 백업파일 보관
6. file2는 file2_rename.txt로 파일명 변경
7. script end문구 출력하면서 종료

# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi # 종료

# if문과 변수 활용, 파일/디렉토리 존재여부 확인
file_name="second_file.txt"
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else
    echo "$file_name does not exists"
fi

# for문
for a in {1..10}
do
    echo "hello worlds$a"
done

# if문 실습
1. echo로 start 출력
2. 만약에 test_dir이 현재 폴더에 있으면 해당 폴더로 이동
   없으면 해당 폴더 생성 후 이동
3. echo로 end 출력 
echo "start"
if [ -d test_dir ]; then
  cd test_dir
else
  mkdir test_dir
  cd test_dir
fi
# cd는 안됨

# 실습2
# test4.sh 내부에
echo "start"
cd test_dir # 이동
file_name="test4.txt" # test4.txt 파일 생성
if [ -f "$file_name" ]; then
  for a in {1..100}
  do
    echo "hello world$a" >> test4.txt
  done
else
  touch test4.txt
fi
echo "end"

# for문 활용해서 count 세기
count=0
for a in {1..10}
do
    ((count++))
done
echo "count is $count"

# for문 활용한 모든 파일 / directory 목록 출력하기
for a in *
do
  echo "a is $a"
done

# for문 활용한 file의 개수와 directory 개수 세기
count_dir=0
count_else=0
for a in *
do
  if [ -d "$a" ]; then
    ((count_dir++))
  else
    ((count_else++))
  fi
done
echo "directory: $count_dir, else: $count_else"
