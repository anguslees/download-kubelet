FROM alpine:3.18@sha256:3ddf7bf1d408188f9849efbf4f902720ae08f5131bb39013518b918aa056d0de

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
