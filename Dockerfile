FROM openjdk:17-jdk-alpine
LABEL version="2.3.2"

COPY crabc-admin.jar /app.jar
ENV LANG="en_US.UTF-8"
EXPOSE 9377

ENV DB_URL=${db_url} DB_USER=${db_user} DB_PWD=${db_pwd}

CMD ["java", "-jar", "/app.jar", "--spring.datasource.url=${DB_URL}", "--spring.datasource.username=${DB_USER}", "--spring.datasource.password=${DB_PWD}"]