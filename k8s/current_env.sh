#!/bin/bash
CONTEXT=$(kubectl config current-context)
if [ "$CONTEXT" == "gke_nomanini-dashboard_us-central1-a_dev" ]
then
    echo DEV
elif [ "$CONTEXT" == "gke_nomanini-dashboard_us-central1-a_prod" ]
then
    echo PROD
else
    echo "$CONTEXT"
fi
