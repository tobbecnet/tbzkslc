#!/bin/bash

kubectl delete deployment solr-deployment

echo " -- SolR Standalone deleted -- "

kubectl get service
