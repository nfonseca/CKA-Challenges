# Services & Networking Exercises

1. Create a deployment with ```image=wordpress``` and expose the deployment so that it is reachable from outside the cluster
2. Create the [network policies scenario](https://github.com/nfonseca/CKA-Challenges/blob/main/services-and-networking/2-network-policies-scenario.yaml) and create NetworkPolicies such that:
 * nginx-operators pod can only reach the nginx-secure app
 * nginx-admin can access the nginx-operator pods and nginx-seure app
3. Verify that the NetworkPolicies work as expected
