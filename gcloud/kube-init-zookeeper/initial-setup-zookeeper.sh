#!/bin/bash

#kubectl create configmap zookeeper-config --from-env-file=configmap/zookeeper-config.properties 
#kubectl get configmap

kubectl create -f zookeeper-pv.yml
kubectl create -f zookeeper-configmap.yml
kubectl create -f zookeeper-poddisruptionbudget.yml
kubectl create -f zookeeper-statefulset.yml
kubectl create -f zookeeper-headless-service.yml
kubectl create -f zookeeper-service.yml

kubectl get pod
kubectl get pv
kubectl get service

echo " -- zookeeper pv/statefulset/service created -- "

