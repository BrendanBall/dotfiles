#!/bin/bash
CONTEXT=$(kubectl config current-context)
STATE=Idle
if [ "$CONTEXT" == "prod" ]
then
     STATE=Critical
fi

echo "{\"state\": \"${STATE}\", \"text\": \"${CONTEXT^^}\"}"