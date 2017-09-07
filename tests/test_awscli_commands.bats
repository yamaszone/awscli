#!/usr/bin/env bats

load helper

# NOTE 1: Make sure your AWS credentials are properly setup before
# running this test.
# NOTE 2: This test is not exhaustive. This test contains only few
# awscli commands to assert dependencies are correct. More cases
# will be added if needed in the future.

@test "AWS: s3 command works." {
	run ./aws s3 ls
	[ $status -eq 0 ]
}

#@test "AWS: cloudformation command works." {
#	run ./aws cloudformation describe-stacks
#	[ $status -eq 0 ]
#}

#@test "AWS: ECS command works." {
#	run ./aws ecs describe-clusters
#	[ $status -eq 0 ]
#}
