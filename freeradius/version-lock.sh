#!/usr/bin/env bash
set -u -o pipefail

VCS_SOURCE="$(git remote get-url --push origin)"
VCS_REVISION="$(git describe --always)"
DATE="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
export VCS_SOURCE
export VCS_REVISION
export DATE
export BASE_IMAGE="quay.io/labmonkeys/alpine:3.17.2-20230218.b277"
export FREERADIUS_VERSION="3.0.26-r0"
export SQLITE_VERSION="3.40.1-r0"
export OPENSSL_VERSION="3.0.7-r2"
