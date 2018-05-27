#!/bin/bash

kubectl delete statefulset zk
kubectl delete service zk-service
kubectl delete service zk-headl-svc
kubectl delete configmap zk-cm

kubectl delete poddisruptionbudget zk-pdb

kubectl delete pvc zk-data-zk-0
kubectl delete pvc zk-data-zk-1
kubectl delete pvc zk-data-zk-2

kubectl delete pv zk-data-0
kubectl delete pv zk-data-1
kubectl delete pv zk-data-2

echo " -- Zookeeper PV/Configmap/Service deleted -- "
