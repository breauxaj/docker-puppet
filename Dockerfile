FROM breauxaj/alpine:latest

RUN apk add ruby shadow less \
  && gem install \
    puppet \
    json_pure \
    puppet-lint \
    yaml-lint \
  && rm -rf /var/cache/apk/*