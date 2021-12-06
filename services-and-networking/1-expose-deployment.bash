# create the deplyment
kubectl create deployment wordpress --image=wordpress

# expose the deployment
kubectl expose deployment wordpress  --type=NodePort --port=80 --name=wordpress-service
