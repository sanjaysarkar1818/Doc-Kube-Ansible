
#!/bin/bash

kubectl delete -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

kubeadm reset

rm -rf /root/.kube
rm -rf /var/lib/weave/
rm -rf /opt/cni/bin/weave-*
 


yum update

