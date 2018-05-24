FROM gradle:jdk10 as BUILDER
COPY --chown=gradle:gradle . /home/gradle/app
WORKDIR /home/gradle/app
RUN gradle build

FROM openjdk:10-jre-slim
COPY --from=BUILDER /home/gradle/app/build/libs/app-boot.jar /
CMD ["java", "-jar", "app-boot.jar"]