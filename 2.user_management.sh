# 사용자 추가
sudo useradd 사용자명
# 패스워드 지정
sudo passwd 사용자명 패스워드
# 사용자 목록 조회
cat /etc/passwd

# 사용자 전환 : 비밀번호는 전환하고자 하는 사용자의 비밀번호
sudo su - 사용자명

# 파일 권한 관리
# 소유자/그룹/others
# read 4 / write 2 / execute 1 
chmod 777 test.sh
chomod u+x test.sh # user한테 +x 권한
chmod g-w test.sh # group한테서 -w 권한 
chmod 755 test.st # 실행권한이 있어야 들어갈 수 있음

# 파일 소유자/그룹 관리
# 소유자와 그룹 변경 
chown 소유자:그룹 파일명
