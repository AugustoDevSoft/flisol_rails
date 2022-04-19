FROM ruby:2.7.3

RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client

ADD . /fliso_rails
WORKDIR /fliso_rails
RUN bundle install

EXPOSE 3000

CMD ["bash"]
