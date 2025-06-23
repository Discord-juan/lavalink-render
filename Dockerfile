FROM eclipse-temurin:17-jdk

WORKDIR /app

# Descargar Lavalink.3.jar desde tu release de GitHub
ADD https://github.com/Discord-juan/lavalink-render/releases/download/1.0.1/Lavalink.3.jar Lavalink.jar

# Agregar tu configuración
COPY application.yml /app/application.yml

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
