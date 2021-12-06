# connect to the etcd pod
kubectl -n kube-system exec etcd-cluster1-master1 -it -- /bin/sh

# from the etcd container
ETCDCTL_API=3 etcdctl --endpoints=[127.0.0.1:2379] snapshot save snapshotdb
