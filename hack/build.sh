#!/bin/bash
set -o errexit -o nounset -o pipefail

sed 's|^\s*run |RUN . /cachi2/cachi2.env \&\& \\\n    |i' Dockerfile > Dockerfile.cachi2
trap 'rm Dockerfile.cachi2' EXIT

podman build -t "$(basename "$PWD")" -f Dockerfile.cachi2 . \
    --network none \
    -v "$(realpath cachi2-output):/cachi2:z"
