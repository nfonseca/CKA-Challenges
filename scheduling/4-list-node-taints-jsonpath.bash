kubectl get nodes -o=jsonpath='{range .items[*]}{.metadata.name}{"--"}{.spec.taints}{"\t"}{"\n"}{end}'
