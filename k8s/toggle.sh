#!/bin/bash

CONTEXT=$(kubectl config current-context)
if [ "$CONTEXT" == "gke_nomanini-dashboard_us-central1-a_dev" ]
then
   kubectl config use-context gke_nomanini-dashboard_us-central1-a_prod
elif [ "$CONTEXT" == "gke_nomanini-dashboard_us-central1-a_prod" ]
then
    kubectl config use-context gke_nomanini-dashboard_us-central1-a_dev
fi
