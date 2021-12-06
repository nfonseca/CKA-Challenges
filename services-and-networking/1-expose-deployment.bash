# create the deplyment
kubectl create deployment wordpress --image=wordpress

# expose the deployment
kubectl expose deployment wordpress  --type=NodePort --port=80 --name=wordpress-service

# testing - just open a web-browser and point to  http://nodeIP:31460
