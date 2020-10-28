#!/bin/bash

CONTEXT=$(kubectl config current-context)
if [ "$CONTEXT" == "dev" ]
then
   kubectl config use-context prod
elif [ "$CONTEXT" == "prod" ]
then
    kubectl config use-context dev
fi
