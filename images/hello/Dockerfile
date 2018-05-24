FROM gradle:jdk10 as BUILDER
COPY --chown=gradle:gradle . /home/gradle/build
WORKDIR /home/gradle/build
RUN gradle build \
&& sleep 1000

FROM openjdk:10-jre-slim
COPY --from=BUILDER /home/gradle/build/libs/hello-boot.jar /
CMD ["java", "-jar", "hello-boot.jar"]