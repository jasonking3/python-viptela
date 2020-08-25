#!/usr/bin/env bash

rm -rf sdwan-devops
git clone --recursive https://github.com/CiscoDevNet/sdwan-devops.git
cd sdwan-devops
mkdir licenses && wget -O licenses/serialFile.viptela -L "https://www.dropbox.com/s/gyuxxn311peccwp/serialFile.viptela?dl=0"
./play.sh -i inventory/hq2 clean-virl.yml && \
./play.sh -i inventory/hq2 build-ca.yml && \
./play.sh -i inventory/hq2 build-virl.yml && \
./play.sh -i inventory/hq2 config-virl.yml