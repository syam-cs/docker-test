FROM ruby:2.5.1
ADD ./ /docker-test/
WORKDIR /docker-test
RUN bundle install \
    && mkdir reports/

ENTRYPOINT cucumber features/test.feature --format html --out report.html \
           && mv report.html reports/

ADD ./reports /docker-test/reports/
