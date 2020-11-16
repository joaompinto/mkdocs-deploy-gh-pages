# We need 6.0.2 until the below fix is released in 6.1.6
# https://github.com/squidfunk/mkdocs-material/commit/a9c782768e1ab70851530716e7dc577e26209106
FROM squidfunk/mkdocs-material:6.0.2
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
