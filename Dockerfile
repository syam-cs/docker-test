FROM ruby:2.5.1
RUN apt-get update
WORKDIR /usr/
COPY Gemfile /usr/
RUN bundle install
RUN mkdir -p /output
CMD ["cucumber", "--require", "features", "--format", "html", "--out", "output/report.html"]
COPY output/report.html output/report.html
