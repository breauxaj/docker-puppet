FROM breauxaj/alpine:latest

RUN apk add ruby shadow less \
  && gem install \
    bundler \
    hiera-regex \
    json_pure \
    minitar-cli \
    puppet \
    puppet-lint \
    r10k \
    yaml-lint \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /etc/puppet
