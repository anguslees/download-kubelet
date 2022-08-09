FROM alpine:3.15@sha256:69463fdff1f025c908939e86d4714b4d5518776954ca627cbeff4c74bcea5b22

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
