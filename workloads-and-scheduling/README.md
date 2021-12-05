# Workloads & Scheduling Exercises

1. Label a node in the cluster with the type ```nodeType=vxrail```
3. Create a pod and assign the pod to that node
4. Verify that the pod is running on the node
5. List all the node taints using jsonpath
6. Schedule a new pod called vxrail-pod-master on the master node
7. Add a label ```allflash=yes``` to nodes 1 & 2
8. Create and assign a pod called vxrail-pod-all-flash to the nodes with label ```allflash=yes```
9. Create a deployment with image debian with 5 replicas on namespace linux
