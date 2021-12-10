# static pods are simply created as regular Pods using the same yaml definition file, the only different is that
# the yaml file needs to be place under /etc/kubernetes/manifests where the kubelet watches for static pods

mv static-pod.yaml /etc/kubernetes/manifests

kubectl get pods

#NAME                               READY   STATUS              RESTARTS   AGE
#static-pod-cluster1-master1        0/1     Completed           3          2m58s
