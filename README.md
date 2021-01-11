[![docker](https://github.com/doitintl/spotzero/workflows/docker/badge.svg)](https://github.com/doitintl/spotzero/actions?query=workflow%3A"docker") [![Go Report Card](https://goreportcard.com/badge/github.com/alexei-led/goapp)](https://goreportcard.com/report/github.com/alexei-led/goapp) [![Docker Pulls](https://img.shields.io/docker/pulls/alexeiled/goapp.svg?style=popout)](https://hub.docker.com/r/alexeiled/goapp) [![](https://images.microbadger.com/badges/image/alexeiled/goapp.svg)](https://microbadger.com/images/alexeiled/goapp "Get your own image badge on microbadger.com") 

# goapp

The `goapp` is a bootstrap project for Go CLI application.

## Docker

The `goapp` uses Docker both as a CI tool and for releasing the final `goapp` Multi-Architecture Docker image (`scratch` with updated `ca-credentials` package).

## Makefile

The `goapp` `Makefile` is used for task automation only: compile, lint, test, etc.

## Continuous Integration

The GitHub action `docker` is used for the `goapp` CI.

## Build with Docker

Use Docker `buildx` plugin to build multi-architecture Docker image.

```sh
docker buildx build --platform=linux/arm64,linux/amd64 -t goapp -f Dockerfile .
```

### Required GitHub secrets

Please specify the following GitHub secrets:

1. `DOCKER_USERNAME` - Docker Registry username
1. `DOCKER_PASSWORD` - Docker Registry password or token
1. `CR_PAT` - Current GitHub Personal Access Token (with `write/read` packages permission)
1. `DOCKER_REGISTRY` - _optional_; Docker Registry name, default to `docker.io`
1. `DOCKER_REPOSITORY` - _optional_; Docker image repository name, default to `$GITHUB_REPOSITORY` (i.e. `user/repo`)
