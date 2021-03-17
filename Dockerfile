FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /navedex
COPY Gemfile /navedex/Gemfile
COPY Gemfile.lock /navedex/Gemfile.lock
RUN bundle install
COPY . /navedex
