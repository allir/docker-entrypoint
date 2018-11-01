ARG TAG=latest
FROM debian:$TAG
LABEL maintainer="alli@allir.org"

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY docker-entrypoint.d/ /docker-entrypoint.d/
RUN chmod u=rx,go= /docker-entrypoint.sh \
    && chmod u=rx,go= /docker-entrypoint.d/* 
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["bash"]

