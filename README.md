[![](https://github.com/alexeiled/goapp/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/alexeiled/goapp/actions?query=workflow%3A"Docker+Image+CI") [![Docker Pulls](https://img.shields.io/docker/pulls/alexeiled/goapp.svg?style=popout)](https://hub.docker.com/r/alexeiled/goapp) [![](https://images.microbadger.com/badges/image/alexeiled/goapp.svg)](https://microbadger.com/images/alexeiled/goapp "Get your own image badge on microbadger.com")

# goapp

The `goapp` is a bootstrap project for Go CLI application.

## Docker

The `goapp` uses Docker both as a CI tool and for releasing final `goapp` Docker image (`scratch` with updated `ca-credentials` package).

## Makefile

The `goapp` `Makefile` is used for task automation only: compile, lint, test and etc.

## Continuous Integration

GitHub action `Docker CI` is used for `goapp` CI.

### Required GitHub secrets

Please specify the following GitHub secrets:

1. `DOCKER_USERNAME` - DockerHub username
2. `DOCKER_PASSWORD` - DockerHub password or token
