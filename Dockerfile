FROM gradle:jdk8-alpine as BUILDER
MAINTAINER Alexandru Ast <alexandru.ast@gmail.com>
COPY --chown=gradle:gradle . /home/gradle/app
WORKDIR /home/gradle/app
RUN gradle build

FROM openjdk:8u151-jre-alpine
COPY --from=BUILDER /home/gradle/app/build/libs/*.jar app.jar
CMD ["java", "-jar", "app.jar"]