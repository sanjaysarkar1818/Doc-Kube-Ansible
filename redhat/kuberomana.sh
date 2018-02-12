#!/bin/bash




{

 swapoff -a
 
 kubeadm init
 rm -rf /root/.kube
 mkdir -p $HOME/.kube
 sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
 sudo chown $(id -u):$(id -g) $HOME/.kube/config

 yum  update

kubectl apply -f https://raw.githubusercontent.com/romana/romana/master/containerize/specs/romana-kubeadm.yml


} &> /dev/null

