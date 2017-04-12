#!/usr/bin/env bats

load helper

@test "AWS: awscli installed properly." {
	run ./aws --version
	assert_contains "$output" "aws-cli/1.11"
}

@test "AWS: groff+less installed and awscli displays help." {
	run ./aws help
	[ $status -eq 0 ]
	run ./aws s3 help
	[ $status -eq 0 ]
}

