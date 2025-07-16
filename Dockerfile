FROM alpine:3.21@sha256:b6a6be0ff92ab6db8acd94f5d1b7a6c2f0f5d10ce3c24af348d333ac6da80685

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
