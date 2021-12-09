kubectl get pods -o wide

#NAME                               READY   STATUS              RESTARTS   AGE     IP           NODE               NOMINATED NODE   READINESS GATES
#nginx-admins-579cd949b5-4pxkn      1/1     Running             0          8m9s    10.46.0.2    cluster1-worker2   <none>           <none>
#nginx-admins-579cd949b5-ntbb5      1/1     Running             0          8m9s    10.40.0.5    cluster1-worker3   <none>           <none>
#nginx-operators-85f9d77bb4-4rtrd   1/1     Running             0          8m9s    10.40.0.4    cluster1-worker3   <none>           <none>
#nginx-operators-85f9d77bb4-5fkp2   1/1     Running             0          8m9s    10.40.0.7    cluster1-worker3   <none>           <none>
#nginx-operators-85f9d77bb4-7lk5b   1/1     Running             0          8m9s    10.40.0.6    cluster1-worker3   <none>           <none>
#nginx-operators-85f9d77bb4-7z9d8   1/1     Running             0          8m9s    10.46.0.5    cluster1-worker2   <none>           <none>
#nginx-operators-85f9d77bb4-rtwq8   1/1     Running             0          8m9s    10.46.0.4    cluster1-worker2   <none>           <none>
#nginx-secure-778dc5749f-b4rj9      1/1     Running             0          8m9s    10.40.0.8    cluster1-worker3   <none>           <none>
#nginx-secure-778dc5749f-q6z6m      1/1     Running             0          8m9s    10.36.0.25   cluster1-worker1   <none>           <none>
#nginx-secure-778dc5749f-r467f      1/1     Running             0          8m9s    10.46.0.3    cluster1-worker2   <none>           <none>

# Get the Service IP for the nginx-secure Pod

kubectl get services

#NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
#nginx-secure        ClusterIP   10.98.118.35   <none>        80/TCP         9m

# Test access to nginx-secure pods from an operator Pod

kubectl exec nginx-operators-85f9d77bb4-4rtrd -it -- curl http://10.98.118.35:80

#<!DOCTYPE html>
#<html>
#<head>
#<title>Welcome to nginx!</title>
#<style>
#html { color-scheme: light dark; }
#body { width: 35em; margin: 0 auto;
#font-family: Tahoma, Verdana, Arial, sans-serif; }
#</style>
#</head>
#<body>
#<h1>Welcome to nginx!</h1>
#<p>If you see this page, the nginx web server is successfully installed and
#working. Further configuration is required.</p>

#<p>For online documentation and support please refer to
#<a href="http://nginx.org/">nginx.org</a>.<br/>
#Commercial support is available at
#<a href="http://nginx.com/">nginx.com</a>.</p>

#<p><em>Thank you for using nginx.</em></p>
#</body>
#</html>


# Test that we cannot ping the admin Pods from the operator Pods

kubectl exec nginx-operators-85f9d77bb4-4rtrd -it -- ping 10.46.0.4

#PING 10.46.0.4 (10.46.0.4): 56 data bytes
#^C
#--- 10.46.0.4 ping statistics ---
#18 packets transmitted, 0 packets received, 100% packet loss
#command terminated with exit code 1

# Delete the NetworkPolicy and verify that the operator Pods can now ping the admin Pods

