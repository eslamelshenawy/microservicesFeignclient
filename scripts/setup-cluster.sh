#!/bin/bash

set -x

. ./set-env.sh

kubectl config set-context $CLUSTER1_NAME
kubectl config use-context $CLUSTER1_NAME

kubectl create namespace $NAMESPACE_GATEWAY
kubectl create namespace $NAMESPACE_ORGANIZATION
kubectl create namespace $NAMESPACE_USER
kubectl create namespace $NAMESPACE_MONGO

# create clusterRole
kubectl apply  -f ../k8s/rbac-cluster-role.yaml

# creat service account in each namespace
kubectl create serviceaccount $SA_NAME -n $NAMESPACE_GATEWAY
kubectl create serviceaccount $SA_NAME -n $NAMESPACE_ORGANIZATION
kubectl create serviceaccount $SA_NAME -n $NAMESPACE_USER
kubectl create serviceaccount $SA_NAME -n $NAMESPACE_MONGO

# bind service accounts to clusterRole
kubectl create clusterrolebinding service-pod-reader-$NAMESPACE_GATEWAY --clusterrole=microservices-kubernetes-namespace-reader --serviceaccount=$NAMESPACE_GATEWAY:$SA_NAME
kubectl create clusterrolebinding service-pod-reader-$NAMESPACE_ORGANIZATION --clusterrole=microservices-kubernetes-namespace-reader --serviceaccount=$NAMESPACE_ORGANIZATION:$SA_NAME
kubectl create clusterrolebinding service-pod-reader-$NAMESPACE_USER --clusterrole=microservices-kubernetes-namespace-reader --serviceaccount=$NAMESPACE_USER:$SA_NAME
kubectl create clusterrolebinding service-pod-reader-$NAMESPACE_MONGO --clusterrole=microservices-kubernetes-namespace-reader --serviceaccount=$NAMESPACE_MONGO:$SA_NAME



