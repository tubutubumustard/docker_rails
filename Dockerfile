FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client-11

WORKDIR /myapp

COPY rails/Gemfile /myapp/Gemfile
COPY rails/Gemfile.lock /myapp/Gemfile.lock

RUN bundle install
