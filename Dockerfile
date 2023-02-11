FROM alpine:3.17@sha256:69665d02cb32192e52e07644d76bc6f25abeb5410edc1c7a81a10ba3f0efb90a

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
