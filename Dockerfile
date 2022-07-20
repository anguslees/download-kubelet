FROM alpine:3.15@sha256:0483110c51a764abe175a8cefb941541ca0bc0f628ce418d3a660338abf4622a

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
