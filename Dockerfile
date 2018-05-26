FROM gradle:jdk8 as BUILDER

COPY --chown=gradle:gradle . /home/gradle/app

WORKDIR /home/gradle/app

RUN gradle build


FROM openjdk:8u171-jre-slim

COPY --from=BUILDER /home/gradle/app/build/libs/*.jar /

WORKDIR /

USER nobody

CMD ["/bin/sh", "-c", "java -jar *.jar"]