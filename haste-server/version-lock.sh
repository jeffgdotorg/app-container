#!/usr/bin/env bash
set -u -o pipefail

source ../base_images.sh

VCS_SOURCE="$(git remote get-url --push origin)"
VCS_REVISION="$(git describe --always)"
DATE="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
export VCS_SOURCE
export VCS_REVISION
export DATE
export BASE_IMAGE="${LANG_NODE_16}"
export GIT_COMMIT="b52b394bad909ddf151073987671e843540d91d6"
