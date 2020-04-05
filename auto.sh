#!/bin/bash

GITHUB_REF=$1

PULL_REQUEST_NUMBER=$(node ./extract.js $GITHUB_REF)

if [[ $PULL_REQUEST_NUMBER = "FAILURE" ]]
then
    echo "FAILURE"
    exit 1;
else

    ./node_modules/.bin/surge ./dist $GENERATE_LINK --token $2
    
    echo $GENERATE_LINK
fi