FROM docker:dind

RUN apk add --no-cache curl git

RUN curl -L https://dl.dagger.io/dagger/install.sh | sh

WORKDIR /app

ENV PORT=${PORT:-8080}
EXPOSE ${PORT}

ENTRYPOINT ["dockerd-entrypoint.sh"]
