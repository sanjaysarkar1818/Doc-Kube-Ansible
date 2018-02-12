#!/bin/bash

kubectl delete -f https://raw.githubusercontent.com/romana/romana/master/containerize/specs/romana-kubeadm.yml


kubeadm reset

rm -rf /root/.kube
rm -rf /etc/cni/net.d/10-romana.conf
rm -rf /opt/cni/bin/romana
rm -rf /etc/romana
rm -rf /var/lib/romana

yum  update
