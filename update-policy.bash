#!/usr/bin/env bash

curl -X POST -H "x-api-key:$AWS_API_KEY" https://ux26sjz45i.execute-api.us-east-1.amazonaws.com/prod/travis-ci/sync/
