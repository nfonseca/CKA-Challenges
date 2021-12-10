# stop all control plane components by moving the files to the upper directory

mv /etc/kubernetes/manifests/* /etc/kubernetes

# restore etcd backup

sudo ETCDCTL_API=3 etcdctl snapshot restore /home/vagrant/etcd-snapshot.bck
