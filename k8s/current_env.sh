#!/bin/bash
CONTEXT=$(kubectl config current-context)
if [ "$CONTEXT" == "gke_nomanini-dashboard_us-central1-a_dev" ]
then
    echo '{"state": "Idle", "text": "DEV"}'
elif [ "$CONTEXT" == "gke_nomanini-dashboard_us-central1-a_prod" ]
then
     echo '{"state": "Critical", "text": "PROD"}'
else
     echo "{\"state\": \"Idle\", \"text\": \"$CONTEXT\"}"
fi
