#!/bin/bash
STATUS=$(systemctl --user is-active cloudsql-prod)
STATE="Idle"

if [ "$STATUS" == "active" ]
then
    STATE="Critical"
fi

echo "{\"state\": \"$STATE\", \"text\": \"SQL PROD: $STATUS\"}"
