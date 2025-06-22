FROM eclipse-temurin:17-jdk

WORKDIR /app

# Descargar Lavalink.jar
RUN curl -L -o Lavalink.jar https://github.com/Discord-juan/lavalink-render/releases/download/lavalink/Lavalink.jar

# Copiar el archivo application.yml (muy importante)
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
