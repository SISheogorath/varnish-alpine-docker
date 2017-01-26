FROM alpine:3.5
MAINTAINER  Christoph (Sheogorath) Kern <sheogorath@shivering-isles.com>
ENV VARNISH_BACKEND_ADDRESS app
ENV VARNISH_MEMORY 100M
ENV VARNISH_BACKEND_PORT 80
EXPOSE 80

RUN apk update && \
    apk upgrade && \
    apk add varnish

ADD start.sh /start.sh
CMD ["/start.sh"]
