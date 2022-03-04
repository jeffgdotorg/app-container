#!/usr/bin/env bash
set -u -o pipefail

VCS_SOURCE="$(git remote get-url --push origin)"
VCS_REVISION="$(git describe --always)"
DATE="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
export VCS_SOURCE
export VCS_REVISION
export DATE
export BASE_IMAGE="quay.io/labmonkeys/alpine:3.15.0.b74"
export BUILDER_BASE_IMAGE="golang:alpine"
export FEATMAP_VERSION="2.1.0"