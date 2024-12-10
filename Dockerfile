FROM openjdk:17-jdk-alpine
LABEL version="2.3.2"

COPY crabc-admin.jar /app.jar
ENV LANG="en_US.UTF-8"
EXPOSE 9377

CMD ["java", "-jar", "/app.jar"]
