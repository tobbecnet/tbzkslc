#!/bin/bash

kubectl create -f solr-deployment.yml
kubectl expose deployment solr-deployment --type="LoadBalancer" --name=solr --port=8983 --target-port=8983

echo " -- SolR Standalone created / exposed -- "

kubectl get service
