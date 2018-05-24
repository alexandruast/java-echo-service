FROM gradle:jdk10 as BUILDER
COPY --chown=gradle:gradle . /home/gradle/project
WORKDIR /home/gradle/project
RUN gradle build \
&& sleep 1000

FROM openjdk:10-jre-slim
COPY --from=BUILDER /home/gradle/project/build/libs/hello-boot.jar /
CMD ["java", "-jar", "hello-boot.jar"]