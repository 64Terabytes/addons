ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN \
  apk add --no-cache \
    python3


# Install Copyparty
RUN wget https://github.com/9001/copyparty/releases/download/v1.20.4/copyparty-sfx.py
# Copy data for add-on
COPY run.sh /
COPY copyparty.conf /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]