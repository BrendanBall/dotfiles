#!/bin/bash
DEV=$(systemctl --user is-active --quiet cloudsql-dev && echo DEV)
PROD=$(systemctl --user is-active --quiet cloudsql-prod && echo PROD)
STATE="Idle"
if [ "$PROD" == "PROD" ]
then
    STATE="Critical"
fi
echo "{\"state\": \"$STATE\", \"text\": \"SQL: $DEV $PROD\"}"
