FROM alpine:3.18@sha256:1875c923b73448b558132e7d4a44b815d078779ed7a73f76209c6372de95ea8d

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
