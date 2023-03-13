
FROM python:3.10-alpine




ADD requirements.txt /requirements_base.txt

RUN apk add --no-cache --update --virtual .build-deps \
        alpine-sdk musl-dev \
        jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev \
        libressl-dev libffi-dev   && \
    pip install -r /requirements_base.txt  && \
    apk del .build-deps