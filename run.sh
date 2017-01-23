#! /bin/sh

set -ex

# This is in a separate file to allow injection of environment variables at runtime

sed -i "s/DATADOG_API_KEY/$DD_API_KEY/" /go/src/github.com/stripe/veneur/config.yaml

exec /build/veneur -f config.yaml
