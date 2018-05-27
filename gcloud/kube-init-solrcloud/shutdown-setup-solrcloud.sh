#!/bin/bash

kubectl delete configmap solr-config 

kubectl delete pvc solrc-data-solrc-ss-0
kubectl delete pvc solrc-data-solrc-ss-1
kubectl delete pvc solrc-data-solrc-ss-2

kubectl delete pv solrc-data-0
kubectl delete pv solrc-data-1
kubectl delete pv solrc-data-2

kubectl delete pvc solrc-pvc

kubectl delete statefulset solrc-ss
kubectl delete service solr-service

echo " -- SolR PV/StatefulSet/Service deleted -- "
