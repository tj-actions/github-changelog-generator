FROM ruby:2.6.4-alpine3.9

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash git

COPY Gemfile Gemfile

RUN gem install bundler --version 2.0.2 \
  && bundle install --system \
  && gem uninstall bundler

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["github_changelog_generator"]
