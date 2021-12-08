kubectl get pods
kubectl exec redis-745f959dd7-c2b75 -it -- ls -la /tmp

#vagrant@cluster1-master1:~$ k exec redis-745f959dd7-c2b75 -it -- ls -la /tmp
#total 12
#drwxrwxrwx 4 root root 4096 Dec  8 10:10 .
#drwxr-xr-x 1 root root 4096 Dec  8 10:10 ..
#drwxr-xr-x 2 root root 4096 Dec  8 10:10 ..2021_12_08_10_10_34.773039463
#lrwxrwxrwx 1 root root   31 Dec  8 10:10 ..data -> ..2021_12_08_10_10_34.773039463
#drwxrwxrwt 3 root root  100 Dec  8 10:10 redis-password
#lrwxrwxrwx 1 root root   17 Dec  8 10:10 redis.conf -> ..data/redis.conf
