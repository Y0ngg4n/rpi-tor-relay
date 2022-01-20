FROM alpine

RUN apk add --no-cache tor
RUN apk add --update \
     python3 \
     python3-dev \
     py3-pip \
     build-base \
  && pip install nyx


EXPOSE 9050 9051

VOLUME ["/var/lib/tor"]

USER tor

CMD ["/usr/bin/tor"]
