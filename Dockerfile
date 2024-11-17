# Use a lightweight base image with Java
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy Gradle wrapper and the build.gradle file to build the application
COPY build.gradle gradlew gradlew.bat settings.gradle ./
COPY gradle gradle
RUN ./gradlew build --no-daemon || return 0

# Copy the built JAR file into the container
COPY build/libs/*.jar app.jar

# Expose the port that your Spring Boot application runs on (default is 8080)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
