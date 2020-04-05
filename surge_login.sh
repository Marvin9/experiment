#!/bin/bash

echo $1 > email_pass
echo $2 >> email_pass

./node_modules/.bin/surge login < email_pass

rm email_pass