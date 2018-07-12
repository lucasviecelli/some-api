FROM ruby:2.4.4-alpine
WORKDIR /usr/src/app
COPY . .
RUN apk add --no-cache --update build-base \
  linux-headers \
  git \
  postgresql-dev \
  nodejs \
  tzdata \
  curl \
  && curl -L \
  https://github.com/maxcnunes/waitforit/releases/download/v2.2.0/waitforit-linux_amd64 > \
  /usr/bin/waitforit \
  && chmod +x /usr/bin/waitforit 
RUN bundle install
ENTRYPOINT [ "./start.sh" ]
CMD ["rails", "server", "puma"]