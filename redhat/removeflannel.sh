#!/bin/bash

kubectl delete -f https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml

kubeadm reset

rm -rf /root/.kube
rm -rf /var/lib/cni/flannel 
rm -rf /var/lib/cni/*


yum  update

