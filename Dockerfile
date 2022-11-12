FROM alpine:3.16@sha256:b95359c2505145f16c6aa384f9cc74eeff78eb36d308ca4fd902eeeb0a0b161b

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
