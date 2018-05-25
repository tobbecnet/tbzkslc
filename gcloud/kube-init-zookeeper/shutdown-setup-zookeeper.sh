#!/bin/bash

kubectl delete statefulset zookeeper-ss
kubectl delete svc zookeeper-service

kubectl delete configmap zookeeper-config 

kubectl delete pv zookeeper-volume
