#!/bin/bash

gcloud compute disks create --size 80 --type pd-standard --zone europe-west3-a pd-disk-mt-0
gcloud compute disks create --size 80 --type pd-standard --zone europe-west3-a pd-disk-mt-1
gcloud compute disks create --size 80 --type pd-standard --zone europe-west3-a pd-disk-mt-2

echo " -- gcloud mt disks created -- "

gcloud compute disks list
