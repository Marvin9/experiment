#!/bin/bash

GITHUB_REF=$1

PULL_REQUEST_NUMBER=$(node ./extract.js $GITHUB_REF)

if [[ $PULL_REQUEST_NUMBER = "FAILURE" ]]
then
    echo "FAILURE"
    exit 1;
else
    GENERATE_LINK="experiment-${PULL_REQUESST_NUMBER}.surge.sh"
    bash ./surge_login.sh $2 $3
    DOMAIN=GENERATE_LINK npm run deploy
    echo $GENERATE_LINK
fi