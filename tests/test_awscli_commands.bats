#!/usr/bin/env bats

load helper

@test "AWS: s3 command works." {
	run ./aws s3 ls
	[ $status -eq 0 ]
}

