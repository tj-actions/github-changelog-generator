FROM ruby:3.0.1-alpine3.13

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash git

COPY Gemfile Gemfile

RUN gem install bundler --version 2.2.16 \
  && bundle install --system \
  && gem uninstall bundler

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["github_changelog_generator"]
