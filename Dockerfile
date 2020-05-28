FROM ruby:2.5.1
RUN apt-get update
WORKDIR /usr/
COPY Gemfile /usr/
RUN bundle install
