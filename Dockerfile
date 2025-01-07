# base-image (java 21사용)
FROM openjdk:21

# COPY에서 사용될 경로 변수
ARG JAR_FILE=build/libs/*-SNAPSHOT.jar

# jar 빌드 파일을 도커 컨테이너로 복사
COPY ${JAR_FILE} app.jar

# jar 파일 실행
ENTRYPOINT ["java","-jar","/app.jar"]