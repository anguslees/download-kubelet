FROM alpine:3.18@sha256:2995c82e8e723d9a5c8585cb8e901d1c50e3c2759031027d3bff577449435157

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
