FROM node:8
MAINTAINER GlueDigital

RUN apt-get update && apt-get install -y \
  build-essential \
  curl \
  ruby \
  rubygems \
  ruby-dev \
  nginx

RUN npm install -g \
  gulp \
  http-server

RUN gem install bundler

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

COPY package.json package.json
RUN npm install

COPY . /app

WORKDIR /app
RUN gulp build

CMD http-server /app/dist/www
