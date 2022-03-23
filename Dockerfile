FROM alpine:3.15@sha256:6af1b11bbb17f4c311e269db6530e4da2738262af5fd9064ccdf109b765860fb

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
