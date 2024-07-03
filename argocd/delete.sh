#!/bin/bash

SERVICE=$1

oc ns video
oc get pod | grep ${SERVICE} | awk '{print $1}' | xargs oc delete pod
oc get svc | grep ovms | awk '{print $1}' | xargs oc delete svc
oc get route | grep ${SERVICE} | awk '{print $1}' | xargs oc delete route

oc get po
