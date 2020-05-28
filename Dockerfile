FROM ruby:2.5.1
RUN apt-get update
WORKDIR /usr/
COPY Gemfile /usr/
RUN bundle install
RUN touch test.txt
CMD ["cucumber", "--require", "features", "--format", "pretty", "--format", "html", "--out", "output/report.html"]
RUN sh "mkdir ${env.WORKSPACE}/jenkinsOut && cp -r /usr/test.txt ${env.WORKSPACE}/jenkinsOut"
