#!/bin/bash

function kpatch() {
    kubectl patch deployment $1 -p "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"`date +'%s'`\"}}}}}"
}

function mkenv() {
    kubectl config use-context minikube
}

function dev() {
    kubectl config use-context gke_nomanini-dashboard-dev_us-central1-a_dev
}

function prod() {
    kubectl config use-context gke_nomanini-dashboard_us-central1-a_prod
}
