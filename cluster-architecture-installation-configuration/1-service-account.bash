kubectl create namespace dev
kubectl -n dev create serviceaccount tester
kubectl -n dev create role pod-tester --verb=create --verb=list --verb=delete --resource=pods,services
kubectl -n dev create rolebinding pod-tester --role=pod-tester --serviceaccount=dev:tester
# check permissions

kubectl -n dev auth can-i create services --as system:serviceaccount:dev:tester
# yes
kubectl -n dev auth can-i create pods --as system:serviceaccount:dev:tester
# yes
kubectl -n dev auth can-i create secrets --as system:serviceaccount:dev:tester
# no
