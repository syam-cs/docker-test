FROM ruby:2.5.1
RUN apt-get update
WORKDIR /usr/
COPY Gemfile Gemfile
COPY features features
RUN bundle install
CMD ["cucumber", "--require", "features", "--format", "html", "--out", "output/report.html"]
RUN mkdir -p /output
