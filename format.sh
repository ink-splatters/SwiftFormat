#!/bin/sh

# shellcheck disable=SC3010
if [[ -z ${TRAVIS} ]]; then
	CommandLineTool/swiftformat . --cache ignore
fi
