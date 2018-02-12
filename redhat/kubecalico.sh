#!/bin/bash

 swapoff -a

  #vim   /home/ansible/bootstrao.sh
 kubeadm init --pod-network-cidr=192.168.0.0/16 >/home/ansible/bootstrap.sh

 
 rm -rf /root/.kube
 mkdir -p $HOME/.kube
 sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
 sudo chown $(id -u):$(id -g) $HOME/.kube/config

yum  update

kubectl apply -f https://docs.projectcalico.org/v2.6/getting-started/kubernetes/installation/hosted/kubeadm/1.6/calico.yaml

