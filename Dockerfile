FROM eclipse-temurin:21-jre

WORKDIR /server

COPY . .

EXPOSE 25565

CMD ["sh", "-c", "java -Xms512M -Xmx${MEMORY_LIMIT:-1024M} -jar server.jar nogui"]
