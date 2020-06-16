FROM ruby:2.5.1
RUN mkdir reports
ADD ./ /docker-test/
WORKDIR /docker-test
RUN bundle install

ENTRYPOINT cucumber features/test.feature --format html --out report.html \
           && mv report.html reports/

ADD ./reports /docker-test/reports/
