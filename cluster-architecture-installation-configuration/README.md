# Cluster Architecture, Installation & Configuration Exercises

1. Create a new ServiceAccount tester in Namespace dev. Create a Role and RoleBinding, both named pod-tester as well. These should allow the new SA to only create,list and delete Pods and Services in that Namespace.
2. Verify if you can create Pods and Services on the dev namespace and also verify if you can create Secrets
3. Backup the etcd database running on the master node
