


#!/bin/bash


yum  update

kubectl delete -f https://docs.projectcalico.org/v2.6/getting-started/kubernetes/installation/hosted/kubeadm/1.6/calico.yaml

kubeadm reset

rm -rf /root/.kube
#rm -rf /var/lib/calico/
rm -rf /opt/cni/bin/calico-*
rm -rf /opt/cni/bin/calico


yum  update

