FROM breauxaj/alpine:latest

RUN apk add ruby shadow less \
  && gem install \
    puppet \
    puppet-lint \
    yaml-lint \
    --no-rdoc \
  && rm -rf /var/cache/apk/*