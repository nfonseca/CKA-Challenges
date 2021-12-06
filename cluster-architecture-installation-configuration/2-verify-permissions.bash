# check permissions
kubectl -n dev auth can-i create services --as system:serviceaccount:dev:tester
# yes
kubectl -n dev auth can-i create pods --as system:serviceaccount:dev:tester
# yes
kubectl -n dev auth can-i create secrets --as system:serviceaccount:dev:tester
# no
