FROM docker:stable

WORKDIR /app
ADD main.sh cleanup.sh ./

ENV CLEANUP_RATE 86400

ENTRYPOINT [ "/app/main.sh" ]