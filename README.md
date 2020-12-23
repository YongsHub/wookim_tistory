# wookim_tistory

## CI/CD 구축

특이사항 
소스를 빌드하지 않는다.
라이브러리 의존성은 requirement.txt파일로 전부 관리

소스 자체를 github에 전달하면 
github action은 

 1. unittest 실행
 2. app 소스 디렉토리 및 appspec.yml 파일을 build.zip 파일로 압축
 3. AWS S3에 build.zip 파일을 전달한다.


정리 
### github action > AWS S3 > AWS Pipeline > AWS CodeDeploy > EC2 빌드 파일 전달.

이 후 EC2에 빌드 파일이 전달되면
도커 파일을 이용해 도커 컨테이너를 만들고 flask앱을 
컨테이너에서 실행.


