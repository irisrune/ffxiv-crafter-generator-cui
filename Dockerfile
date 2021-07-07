FROM golang:1.16-alpine3.14

RUN apk add --no-cache --virtual .init git

ENV GO111MODULE on
WORKDIR /go/src/ffxiv-crafter-generator-cui

RUN go get github.com/uudashr/gopkgs/v2/cmd/gopkgs \
  github.com/ramya-rao-a/go-outline \
  github.com/cweill/gotests/gotests \
  github.com/fatih/gomodifytags \
  github.com/josharian/impl \
  github.com/haya14busa/goplay/cmd/goplay \
  github.com/go-delve/delve/cmd/dlv \
  honnef.co/go/tools/cmd/staticcheck \
  golang.org/x/tools/gopls
