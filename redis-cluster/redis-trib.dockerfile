FROM ruby
RUN apt-get update && apt-get install -y dnsutils && apt-get clean
RUN gem install redis
RUN wget http://download.redis.io/redis-stable/src/redis-trib.rb \
  && chmod 755 redis-trib.rb
