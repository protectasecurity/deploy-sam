#!/bin/bash

set -u

function main() {

    if [ "${INPUT_WORKSPACE}" != "" ]; then
        cd ${INPUT_WORKSPACE}
    fi
    
    echo "Run AWS SAM deploy for project"
    set -o pipefail

    sam deploy -t ${INPUT_WORKSPACE}/template.yaml ${INPUT_PARAMS}

    exitCode=${?}

    set +o pipefail
    echo "status=${exitCode}" >> $GITHUB_OUTPUT

    if [ "${exitCode}" != "0" ]; then
        echo "AWS SAM deploy has failed. See above console output for more details."
        exit 1  
    fi
}

main
