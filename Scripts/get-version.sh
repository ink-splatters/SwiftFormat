#!/bin/sh

set -e

REGEX='let swiftFormatVersion = "([0-9]+.[0-9]+.[0-9]+)"'
while IFS= read -r line; do
	# shellcheck disable=SC3010
	if [[ $line =~ $REGEX ]]; then
		# shellcheck disable=SC3028,SC3054
		echo "${BASH_REMATCH[1]}"
		break
	fi
done <Sources/SwiftFormat.swift
