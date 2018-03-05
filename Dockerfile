FROM ruby:2.5-slim

COPY Gemfile Gemfile
RUN bundle
COPY . .
CMD ruby server.rb
