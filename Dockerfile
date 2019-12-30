FROM breauxaj/alpine:latest

RUN apk add ruby shadow less \
  && gem install \
    puppet \
    hiera-regex \
    json_pure \
    r10k \
    puppet-lint \
    yaml-lint \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /etc/puppet
