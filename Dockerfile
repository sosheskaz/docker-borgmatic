FROM ericmiller/borgbackup:latest

RUN apk -U add --virtual build-deps musl-dev gcc py3-pip python3-dev \
  && apk add py3-colorama py3-requests py3-setuptools \
  && pip3 install -U borgmatic \
  && apk del build-deps \
  && rm -rf /var/cache/apk
