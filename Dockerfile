FROM ruby:2.5.1
RUN apt-get update
RUN bundle install
RUN cucumber features/test.feature
