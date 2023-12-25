FROM ruby:alpine
MAINTAINER Jayesh Parmar <jay.parmar.11169@gmail.com>

RUN apk add build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver

ENTRYPOINT [ "rspec" ]
