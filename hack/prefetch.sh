#!/bin/bash
set -o errexit -o nounset -o pipefail

cachi2 fetch-deps '{
    "type": "pip",
    "allow_binary": true,
    "requirements_files": ["requirements.txt", "requirements2.txt"],
    "requirements_build_files": ["requirements-build.txt"]
}'

cachi2 generate-env cachi2-output --for-output-dir /cachi2 -o cachi2-output/cachi2.env
cachi2 inject-files cachi2-output --for-output-dir /cachi2
