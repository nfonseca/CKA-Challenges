# Storage Exercises

1. Create a Pod with ```image=ubuntu``` that uses a Volume and mounts the local /home/ubuntu directory from the host
2. Create a Persistent Volume from a NFS server named nfs-pv
3. Create a Persistent Volume Claim from the previously created PV that requests 1GB of storage
4. Create a Pod named ubuntu-nfs with ```image=ubuntu``` that mounts the NFS PersistentVolumeClaim
5. Create a secret named app-location with following information: APP_LOCATION:/appdata and export that as an environment variable in a Pod
6. Create a deployment called redis with 3 replicas of ```image=redis``` with a custom configuration file for redis that will be loaded from a ConfigMap. Place the custom configuration file on /tmp inside the container. Also create a secret for that deployment with redis-pwd=changeme and mount that secret under /tmp. Modify the redis server to start with the custom configuration file
7. Verify that the previous custom configurations have been applied
8. Create a namespace called tiny-ns and do not allow more than 5 PersistentVolumesClaims to be created on that namespace and a maximum request storage of 250 MB. Verify that the resource quota has been applied.
