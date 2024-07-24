FROM ruby:3.2-alpine
RUN apk add --no-cache git && \
    gem install -N octokit -v 9.1.0
COPY main.rb /

ENTRYPOINT ["ruby", "/main.rb"]
