FROM nginx

ADD . /build/

FROM debian

COPY --from=0 /build/*.md /

RUN ls /
