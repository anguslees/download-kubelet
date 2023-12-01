FROM alpine:3.18@sha256:34871e7290500828b39e22294660bee86d966bc0017544e848dd9a255cdf59e0

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
