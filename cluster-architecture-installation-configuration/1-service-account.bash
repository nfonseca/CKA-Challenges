kubectl create namespace dev
kubectl -n dev create serviceaccount tester
kubectl -n dev create role pod-tester --verb=create --verb=list --verb=delete --resource=pods,services
