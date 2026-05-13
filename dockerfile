FROM --platform=$BUILDPLATFORM golang:latest AS build
ARG TARGETPLATFORM
FROM debian:stable-slim
COPY entrypoint.sh /
COPY install.sh /
RUN bash /install.sh
RUN rm /install.sh
ENTRYPOINT ["bash", "/entrypoint.sh"]
