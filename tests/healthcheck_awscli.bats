#!/usr/bin/env bats

load helper

@test "AWS: awscli installed properly." {
	run aws --version
	assert_contains "$output" "aws-cli/1.11"
}
