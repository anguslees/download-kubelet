FROM alpine:3.18@sha256:dd60c75fba961ecc5e918961c713f3c42dd5665171c58f9b2ef5aafe081ad5a0

RUN apk add wget ca-certificates

ARG TARGETOS
ARG TARGETARCH

ENV OS=$TARGETOS
ENV ARCH=$TARGETARCH

COPY download-kubelet /usr/local/bin/

ENTRYPOINT ["download-kubelet"]
