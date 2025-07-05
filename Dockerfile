# Use Maven to build the project
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Run the jar using a smaller base image
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/EmployeeManagementBackend-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8088
ENTRYPOINT ["java", "-jar", "app.jar"]
