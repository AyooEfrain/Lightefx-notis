# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY build/libs/Notify-3.0.0-all /app/Notify-3.0.0-all

# Expose any necessary ports (if your bot uses a web server or similar)
# EXPOSE 8080

# Set environment variables for your bot (e.g., Discord token, database credentials)
# You can also pass these at runtime using `docker run -e`
ENV DISCORD_TOKEN=MTM0MTcxMzY0MTYzMTc4MDkwNQ.GITogz.vln45LvzYkreUReSjUJs4MIiI_IDd6ZHhpMLaA
ENV DATABASE_URL=your_database_url_here
ENV DATABASE_USER=your_database_user_here
ENV DATABASE_PASSWORD=your_database_password_here

# Run the bot
CMD ["java", "-jar", "Notify-3.0.0-all"]
