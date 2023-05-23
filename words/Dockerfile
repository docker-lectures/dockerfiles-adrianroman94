FROM maven:3.6.3-jdk-8-slim AS builder
COPY . .
RUN mvn verify

FROM openjdk:8-jre-slim
COPY --from=builder /target/words.jar .
CMD ["java", "-Xmx8m", "-Xms8m", "-jar", "words.jar"]
EXPOSE 8080