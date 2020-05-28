FROM ruby:2.5.1
RUN apt-get update
ADD Gemfile
RUN bundle install
