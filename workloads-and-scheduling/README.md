# Workloads & Scheduling Exercises

1. Label a node in the cluster with the type ```nodeType=vxrail```
3. Create a pod and assign the pod to that node
4. Verify that the pod is running on the node
5. List all the node taints using jsonpath
6. Schedule a new pod called vxrail-pod-master on the master node
7. Add a label ```allflash=yes``` to nodes 1 & 2
8. Create and assign a pod called vxrail-pod-all-flash to the nodes with label ```allflash=yes```
9. Create a deployment with image ```alpine:3.14``` with 5 replicas on namespace linux running the command 'sleep 300'
10. Update the alpine deployment to use the latest version of the container image
11. View the rollout history for the alpine-dep deployment
12. Roll back the alpine deployment back to the version 3.14
13. Create a secret named password with the following content 'password:vxrail123' and mount it in a Pod running image debian
