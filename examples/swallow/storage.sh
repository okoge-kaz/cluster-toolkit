#!/bin/bash

export PROJECT_ID=swallow-llm
export BUCKET="cluster-toolkit-tf-state-bucket"
export REGION=us-central2
export ZONE=us-central2-b

gcloud storage buckets create gs://${BUCKET} --project=${PROJECT_ID} \
  --default-storage-class=STANDARD --location=${REGION} \
  --uniform-bucket-level-access

gcloud storage buckets update gs://${BUCKET} --versioning
