FROM ruby:3.0.2-alpine3.13

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash git

COPY Gemfile Gemfile

RUN apk add --no-cache \
  --virtual .gem-installdeps \
  build-base \
  && gem install bundler --version 2.2.16 \
  && bundle config set --local system 'true' \
  && bundle install \
  && gem uninstall bundler \
  && rm Gemfile Gemfile.lock \
  && rm -rf "$GEM_HOME"/cache \
  && apk del .gem-installdeps

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["github_changelog_generator"]
