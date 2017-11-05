#!/bin/bash

rm -rf target/*
git bundle create target/docker-os.bundle master
cp target/docker-os.bundle ../../ci-runner/repos/