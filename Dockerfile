FROM openjdk:11

WORKDIR /app

FROM maven

COPY pom.xml ./
RUN mvn dependency:resolve

COPY src ./src

CMD ["mvn", "test", "-Dsuite=api"]


