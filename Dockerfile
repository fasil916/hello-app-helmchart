# Use a lightweight JDK image to run the prebuilt app
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy the prebuilt JAR from your pipeline workspace into the container
COPY target/*.jar app.jar

# Document the port the app listens on (e.g., 8080)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]

