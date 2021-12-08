# Storage Exercises

1. Create a Pod with ```image=ubuntu``` that uses a Volume and mounts the local /home/ubuntu directory from the host
2. Create a Persistent Volume from a NFS server named nfs-pv
3. Create a Persistent Volume Claim from the previously created PV that requests 1GB of storage
4. Create a Pod named ubuntu-nfs with ```image=ubuntu``` that mounts the NFS PersistentVolumeClaim
5. Create a secret named app-location with following information: APP_LOCATION:/appdata and export that as an environment variable in a Pod
6. Create a deployment called redis with 3 replicas of ```image=redis``` with a custom configuration file for redis that will be loaded from a ConfigMap. Place the custom configuration file on /tmp inside the container. Also create a secret for that deployment with redis-pwd=cgange me and mount that secret under /tmp
