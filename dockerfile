FROM docker:stable

WORKDIR /app
ADD main.sh cleanup.sh ./

ENV FREQUENCY 86400

ENTRYPOINT [ "/app/main.sh" ]