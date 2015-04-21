#!/usr/bin/env bash
set -e

verify_args() {
    if [ "$#" != 1 ]; then
        echo "Usage: $0 packagename" >&2
        exit 1
    fi
}

main() {
    verify_args "$@"
    name="$1"
    conda build "${name}"
    binstar-build submit "${name}" --channel main
}

main "$@"
