# bgsearch-project
개인 프로젝트

## 보드게임 관리 페이지 프로젝트

### 최신 내용

 - 2022-11-27

### 1. 개발환경

 - OS: MacOS
 - IDEA: Intellij IDEA Ultimate Version
 - JDK: Open JDK 11.0.17
 - Database: MariaDB
 - Docker 환경에서 구축

### 2. 구현목적

 - 현재 활동하고 있는 보드게임 모임에서 필요할만한 기능을 제공하려고 함
 - Springboot 개발 연습용 프로젝트
 - Docker Container 환경에서 구축/운영하는 연습한다

### 3. 제공기능

 - 보드게임 등록/수정/삭제
 - 보드게임 목록 보기
 - 보드게임 목록 검색 (검색엔진 사용 X, 현재는 키워드 검색만 가능)

### 4. 추가 구현 예정

 - (TODO, 작업중) 보드게임 모임원 등록/수정/삭제
 - (TODO) 보드게임 모임원 목록 보기

#### 5. 배포방법

 - 시작

 Docker 및 Docker compose가 설치된 환경에서 아래 커맨드 실행

 ```
 $ docker-compose up -d
 ```

 - 정지
 
 ```
 $ docker-compose down
 ```

 - 재배포
 
 정지 후 기존에 생성된 docker image 삭제
 ```
 $ docker rmi bgsearch-project-bgsearch
 ```
 그리고 다시 시작
 ```
 $ docker-compose up -d
 ```
 
