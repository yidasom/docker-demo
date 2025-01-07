### Dockerfile 빌드

1. Dockerfile 작성 [reference](https://docs.docker.com/reference/dockerfile/)
```shell
# openjdk:21 이미지를 기반으로 새 docker 이미지 생성
FROM openjdk:21

# 환경변수? (JAR_FILE) 지정
ARG JAR_FILE=build/libs/*-SNAPSHOT.jar

# JAR_FILE 에 있는 *-SNAPSHOT.jar 파일을 app.jar 이름으로 컨테이너에 복사
COPY ${JAR_FILE} app.jar

# java -jar /app.jar 명령어 실행
ENTRYPOINT ["java","-jar","/app.jar"]

# 이후 : docker 컨테이너가 실행될 때 app.jar 파일이 자동으로 실행
```
2. docker image 생성

3. Dockerfile 실행
4. image 완성
5. docker container 실행


참조 : [Spring Boot with Docker](https://spring.io/guides/gs/spring-boot-docker)
