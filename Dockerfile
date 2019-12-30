FROM breauxaj/alpine:latest

RUN apk add ruby shadow less \
  && gem install bundler \
  && bundle install \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /etc/puppet
