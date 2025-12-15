# Minimaler Alpine-Container
FROM alpine:latest

# Skript app.sh in den Container kopieren
COPY app.sh /app.sh

# Skript ausführbar machen
RUN chmod +x /app.sh

# Container startet mit dem Skript
CMD ["/app.sh"]
