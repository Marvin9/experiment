#!/bin/bash

GITHUB_REF=$1

PULL_REQUEST_NUMBER=$(node ./extract.js $GITHUB_REF)

if [[ $PULL_REQUEST_NUMBER = "FAILURE" ]]
then
    echo "FAILURE"
    exit 1;
else
    GENERATE_LINK="experiment-${PULL_REQUEST_NUMBER}.surge.sh"
    echo $2 > email_pass
    echo $3 >> email_pass
    DOMAIN=$GENERATE_LINK npm run deploy < email_pass
    rm email_pass
    echo $GENERATE_LINK
fi