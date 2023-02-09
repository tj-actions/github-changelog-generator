FROM ruby:3.2.1-alpine3.17

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash

COPY Gemfile* ./

RUN apk add --no-cache \
  --virtual .gem-installdeps \
  build-base \
  && gem install bundler --version 2.4.1 \
  && bundle config set --local system 'true' \
  && bundle install \
  && gem uninstall bundler \
  && rm Gemfile Gemfile.lock \
  && rm -rf "$GEM_HOME"/cache \
  && apk del .gem-installdeps

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["github_changelog_generator"]
