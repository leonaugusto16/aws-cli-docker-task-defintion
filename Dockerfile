FROM alpine:3.10
LABEL maintainer="Leon Augusto<leonaugusto16@gmail.com>"

RUN apk update

# Install packages to debug
RUN apk add --no-cache --virtual .build-deps
RUN apk add bash && apk add make && apk add curl && apk add git

# Install aws-cli
RUN apk -Uuv add groff less python py-pip
RUN pip install awscli
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*

CMD ["yes", "no log for today"]
