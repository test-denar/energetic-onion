#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://artem-stackbit.ngrok.io/project/5f5626b8a0624f0d16d41cf0/webhook/build/ssgbuild > /dev/null

next build && next export

curl -s -X POST https://artem-stackbit.ngrok.io/project/5f5626b8a0624f0d16d41cf0/webhook/build/publish > /dev/null