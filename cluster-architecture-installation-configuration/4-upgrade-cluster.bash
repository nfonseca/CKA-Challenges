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


# Verify

kubectl get nodes

NAME               STATUS   ROLES    AGE     VERSION
cluster1-master1   Ready    master   5d16h   v1.19.16
cluster1-worker1   Ready    <none>   5d16h   v1.19.16
cluster1-worker2   Ready    <none>   5d16h   v1.19.16
cluster1-worker3   Ready    <none>   5d16h   v1.19.16
