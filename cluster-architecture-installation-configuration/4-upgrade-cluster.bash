# On Master Node


# list all versions available
apt-cache madison kubeadm

# remove the hold on kubeadm
apt-mark unhold kubeadm

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

#NAME               STATUS   ROLES    AGE     VERSION
#cluster1-master1   Ready    master   5d16h   v1.19.16
#cluster1-worker1   Ready    <none>   5d16h   v1.19.16
#cluster1-worker2   Ready    <none>   5d16h   v1.19.16
#cluster1-worker3   Ready    <none>   5d16h   v1.19.16

kubectl version


#Client Version: version.Info{Major:"1", Minor:"19", GitVersion:"v1.19.16", GitCommit:"e37e4ab4cc8dcda84f1344dda47a97bb1927d074", GitTreeState:"clean", BuildDate:"2021-10-27T16:25:59Z", GoVersion:"go1.15.15", Compiler:"gc", Platform:"linux/amd64"}
#Server Version: version.Info{Major:"1", Minor:"19", GitVersion:"v1.19.16", GitCommit:"e37e4ab4cc8dcda84f1344dda47a97bb1927d074", GitTreeState:"clean", BuildDate:"2021-10-27T16:20:18Z", GoVersion:"go1.15.15", Compiler:"gc", Platform:"linux/amd64"}
