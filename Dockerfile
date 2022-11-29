FROM openjdk:11-jdk
RUN apt-get update && apt-get install -y maven
VOLUME /tmp

COPY init.sh init.sh
COPY pom.xml pom.xml
RUN mvn clean install
COPY target/app.jar app.jar

ENV JAVA_OPTS=-XX:+UseSerialGC
EXPOSE 9093
RUN chmod 755 init.sh
CMD ["/bin/sh", "init.sh"]