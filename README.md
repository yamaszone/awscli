[![CircleCI](https://circleci.com/gh/yamaszone/awscli/tree/develop.svg?style=svg)](https://circleci.com/gh/yamaszone/awscli/tree/develop)  [![Docker Repository on Quay](https://quay.io/repository/yamaszone/awscli/status "Docker Repository on Quay")](https://quay.io/repository/yamaszone/awscli)

# aws-cli
Minimal [AWS CLI](https://github.com/aws/aws-cli) Docker container using official [Python Alpine](https://hub.docker.com/_/python/) base.

## Prerequisites
1. Docker installed in your environment
2. You have an [AWS access key pair](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html#Using_CreateAccessKey)

## User Guide
- Copy the shell script [`aws`](https://github.com/yamaszone/awscli/blob/master/aws) under `/usr/local/bin` or `/opt/bin` (CoreOS)
  - `aws` above uses `yamaszone/awscli:latest` as the default image. If you need specific CLI version, see [tags list](https://hub.docker.com/r/yamaszone/awscli/tags/).

## Developer Guide
- Project root contains a convenient `run` script to help performing typical tasks for developer workflow (e.g. build image, setup test framework to test image, run tests, etc.)
```sh
$ ./run help
Usage:
         cba | configure-bats-assert    : Configure bats-assert library (first-time only).
         stf | setup-test-framework     : Setup test framework (first-time only).
         build                          : Build image with the given tag (default=latest).
         tests                          : Run tests.
         help                           : Show this help.
```
- All the tests under `./tests` assert successfull image builds and are split into two groups using the following prefix:
  - `healthcheck_*.bats`: Smoke tests that doesn't require AWS credentials
  - `test_*.bats`: Smoke tests that requires AWS credentials
- The project is configured to run `healthchecks_*.bats` via CircleCI when any new changes are pushed to `master`
