# get the ip of the etcd pod
kubectl -n kube-system get pods -o wide
# from the master host
sudo ETCDCTL_API=3 etcdctl --endpoints 192.168.101.101:2379 \ 
--cert=/etc/kubernetes/pki/etcd/server.crt \
--key=/etc/kubernetes/pki/etcd/server.key \
--cacert=/etc/kubernetes/pki/etcd/ca.crt \
snapshot save snapshotdb
