FROM openjdk:11.0.16-jre-slim-buster

ARG REVIEWDOG_VERSION=v0.9.17

RUN apt-get update \
    && apt-get -y install curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sSLO https://github.com/pinterest/ktlint/releases/download/0.40.0/ktlint \
          && chmod a+x ktlint \
          && mv ktlint /bin

RUN curl -sfL https://raw.githubusercontent.com/reviewdog/reviewdog/$REVIEWDOG_VERSION/install.sh | sh -s $REVIEWDOG_VERSION

COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
