FROM eclipse-temurin:17-jdk

WORKDIR /app

# Descargar Lavalink.jar desde GitHub Releases
RUN curl -L -o Lavalink.jar https://github.com/Discord-juan/lavalink-render/releases/download/Lavalink/Lavalink.jar

# Copiar configuración
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
