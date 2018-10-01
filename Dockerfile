FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs sqlite3 libsqlite3-dev
RUN mkdir /geolookup
COPY Gemfile /geolookup/Gemfile
COPY Gemfile.lock /geolookup/Gemfile.lock
WORKDIR /geolookup
COPY . /geolookup
RUN bundle install
