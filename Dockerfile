FROM ruby:3.1.3

WORKDIR /usr/src/app

RUN gem install jekyll bundler

COPY Gemfile ./

RUN bundle install

COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
