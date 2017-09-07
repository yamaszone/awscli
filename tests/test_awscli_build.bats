#!/usr/bin/env bats

load helper

DOCKER_IMAGE=yamaszone/aws

@test "AWS: awscli build for latest version works." {
	run ./aws build
	[ "$status" -eq 0 ]
}

@test "AWS: awscli version configuration works." {
	SPECIFIED_VERSION=1.11.145
	./aws build "$SPECIFIED_VERSION"

	run ./aws config "$SPECIFIED_VERSION"
	[ "$status" -eq 0 ]
	run cat /etc/environment
	assert_contains "$output" "${DOCKER_IMAGE}:${SPECIFIED_VERSION}"
}

