#!/bin/bash

kubectl delete -f https://raw.githubusercontent.com/projectcalico/canal/master/k8s-install/1.7/rbac.yaml
kubectl delete -f https://raw.githubusercontent.com/projectcalico/canal/master/k8s-install/1.7/canal.yaml

kubeadm reset

rm -rf /root/.kube
rm -rf /var/lib/weave/
rm -rf /opt/cni/bin/weave-*



yum update

