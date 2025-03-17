FROM golang:1.21-alpine

RUN apk add --no-cache docker-cli curl git

RUN curl -L https://dl.dagger.io/dagger/install.sh | sh

WORKDIR /app

ENV PORT=${PORT:-8080}
EXPOSE ${PORT}

CMD ["dagger", "run", "--port", "${PORT}", "loop"]
