FROM ruby:2.5.1
ADD ./ /docker-test/
WORKDIR /docker-test
RUN bundle install

ENTRYPOINT cat features/test.feature
