#!/usr/bin/env bash
set -u -o pipefail

VCS_SOURCE="$(git remote get-url --push origin)"
VCS_REVISION="$(git describe --always)"
DATE="$(date --iso-8601=seconds)"
export VCS_SOURCE
export VCS_REVISION
export DATE
export BASE_IMAGE="quay.io/labmonkeys/openjdk:jre-11.0.14.b104"
export CEREBRO_VERSION="0.9.4"
export CEREBRO_HOME="/opt/cerebro"
