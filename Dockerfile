# syntax = docker/dockerfile:experimental

#
# ----- Go Builder Image ------
#
FROM golang:1.13-alpine AS builder

# curl git bash
RUN apk add --no-cache curl git bash make

#
# ----- Build and Test Image -----
#
FROM builder as build

# set working directorydoc
RUN mkdir -p /go/src/app
WORKDIR /go/src/app

# load dependency
COPY go.mod .
COPY go.sum .
RUN --mount=type=cache,target=/go/mod go mod download

# copy sources
COPY . .

# build
RUN make


#
# ------ get latest CA certificates
#
FROM alpine:3.10 as certs
RUN apk --update add ca-certificates


#
# ------ gtoken release Docker image ------
#
FROM scratch

# copy CA certificates
COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

# this is the last command since it's never cached
COPY --from=build /go/src/app/.bin/goapp /goapp

ENTRYPOINT ["/goapp"]