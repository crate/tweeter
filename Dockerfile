FROM rails:latest

ADD . /rails

WORKDIR /rails

EXPOSE 3000

RUN bundle install

CMD rails server