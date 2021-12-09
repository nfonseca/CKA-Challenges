# On Master Node

apt-get update && apt-get install -y kubeadm=1.19.x-00
kubeadm upgrade plan
kubeadm upgrade apply v1.19.16
apt-get install -y kubelet=1.19.16-00 kubectl=1.19.16-00
systemctl daemon-reload
systemctl restart kubelet


# On Worker Nodes

apt-get update && apt-get install -y kubeadm=1.19.16-00
kubeadm upgrade node
apt-get install -y --allow-downgrades kubelet=1.19.16-00 kubectl=1.19.16-00
systemctl daemon-reload
systemctl restart kubelet
