#!/usr/bin/env bash

rm -rf sdwan-devops
git clone --recursive https://github.com/CiscoDevNet/sdwan-devops.git
cd sdwan-devops
aws s3 cp s3://sdwan-devops-us-east-1/serialFile.viptela licenses/serialFile.viptela
./play.sh -i inventory/hq2 clean-virl.yml && \
./play.sh -i inventory/hq2 build-ca.yml && \
./play.sh -i inventory/hq2 build-virl.yml && \
./play.sh -i inventory/hq2 config-virl.yml