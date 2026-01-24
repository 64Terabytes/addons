ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN \
  apk add --no-cache \
    python3 \
    tzdata wget mimalloc2 mimalloc2-insecure \
    py3-jinja2 py3-argon2-cffi py3-pyzmq \
    py3-openssl py3-paramiko py3-pillow \
    ffmpeg


# Install Copyparty
RUN wget https://github.com/9001/copyparty/releases/download/v1.20.4/copyparty-sfx.py
# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]