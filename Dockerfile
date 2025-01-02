# Use the official OpenJDK 17 image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file to the container
COPY target/banking-app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application listens on
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
