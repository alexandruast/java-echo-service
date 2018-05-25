FROM gradle:jdk8 as BUILDER

COPY --chown=gradle:gradle . /home/gradle/echo

WORKDIR /home/gradle/echo

RUN gradle build


FROM openjdk:8u171-jre-slim

COPY --chown=www-data:www-data --from=BUILDER /home/gradle/echo/build/libs/ /var/www/

WORKDIR /var/www

USER www-data

CMD ["java", "-jar", "echo-*.jar"]