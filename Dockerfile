FROM node:14.8.0-alpine3.12

ARG PRETTIER_VERSION=2.1.0

RUN set -x && \
    npm install -g prettier@${PRETTIER_VERSION} && \
    npm cache clean --force

WORKDIR /work
ENTRYPOINT ["/usr/local/bin/prettier"]
CMD ["--help"]
