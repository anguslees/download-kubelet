FROM alpine:3.18@sha256:b90c141a9f1d528f87dc2a54f85a3f49d3c42b10fb00cd42e7f19ba4c9071fa8

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
