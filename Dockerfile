# Use a base image that has Java installed
FROM openjdk:17-slim

# Set the working directory in the Docker image
WORKDIR /app

# Copy the JAR file from the build context into the Docker image
COPY target/*.jar app.jar

# Command to run the application
CMD ["java", "-jar", "app.jar"]
