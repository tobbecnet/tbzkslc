#!/bin/bash

kubectl create configmap solr-config --from-env-file=solrcloud-config.properties 
kubectl get configmap

# TODO: Disks vergrößern. PV's für Solr anlegen und ebenfalls auf die Disks zeigen lassen, sodass eine 1/1 Beziehung zwischen Claims und PV's erzeugt werden kann.
kubectl create -f solrcloud-pv.yml

# TODO volumeClaimTemplate in StatefulSet!!!
# TODO Service Zookeeper? Zu welchem Port und welchem Host wollen die Solr's sich verbinden?
# TODO Was genau muss nach außen Sichtbar gemacht werden? Eigener Loadbalanced Service?
kubectl create -f solrcloud-statefulset.yml
kubectl create -f solrcloud-service.yml

echo " -- SolR PV/StatefulSet/Service created -- "
