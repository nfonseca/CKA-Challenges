# Storage Exercises

1. Create a Pod with ```image=ubuntu``` that uses a Volume and mounts the local /home/ubuntu directory from the host
2. Create a Persistent Volume from a NFS server named nfs-pv
3. Create a Persistent Volume Claim from the previously created PV that requests 1GB of storage
4. Create a Pod named ubuntu-nfs with ```image=ubuntu``` that mounts the NFS PersistentVolumeClaim
5. *Using secrets as environment variables on a pod
6. *using secrets as volumes
7. *Using configmaps
