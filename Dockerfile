FROM gradle:jdk8 as BUILDER
MAINTAINER Alexandru Ast <alexandru.ast@gmail.com>
COPY --chown=gradle:gradle . /home/gradle/app
WORKDIR /home/gradle/app
RUN gradle build

FROM openjdk:8u171-jre-slim
COPY --chown=www-data:www-data --from=BUILDER /home/gradle/app/build/libs/ /var/www/
WORKDIR /var/www
USER www-data
CMD [ \
  "java", \
  "-Xmx450m", \
  "-jar", \
  "app.jar" \
  ]