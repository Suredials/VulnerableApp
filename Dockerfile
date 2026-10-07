FROM eclipse-temurin:17-jdk-jammy AS build
WORKDIR /src
COPY . .
RUN ./gradlew --no-daemon bootJar

FROM eclipse-temurin:17-jre-jammy
RUN apt-get update && apt-get install -y --no-install-recommends iputils-ping && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY --from=build /src/build/libs/VulnerableApp-1.0.0.jar /app/app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
