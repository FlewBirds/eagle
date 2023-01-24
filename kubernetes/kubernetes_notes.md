What is Kubernetes

Master - 
API service

schedular

control - manager

etcd -

kubelet - agent
kube-proxy



API server - 


POD - 

Kubernetes command reference:
https://jamesdefabia.github.io/docs/user-guide/kubectl/kubectl_port-forward/

Adhoc commands
Dry run:
kubectl run nginx-2 --image=nginx:1.14.2 --dry-run=client -o yaml > nginx.yml

Create and get container specifications in to yaml file
kubectl run nginx-1 --image=nginx:1.14.2 -o yml > nginx.yml

app port/pod
continer port: 8000

app service
service port: 80

cluster app endpoint:
hostport/nodeport/clusterip:31679

Generate Manifest files from ad hoc commands
(base) rsrighakollapu@adminisatorsmbp .kube % kubectl expose pod nginx-1 --type=NodePort --port=8080 --target-port=80 --d
ry-run=client -o yaml   
apiVersion: v1
kind: Service
metadata:
  creationTimestamp: null
  labels:
    run: nginx-1
  name: nginx-1
spec:
  ports:
  - port: 8080
    protocol: TCP
    targetPort: 80
  selector:
    run: nginx-1
  type: NodePort
status:
  loadBalancer: {}


No of ways we exposed service:

kubectl port-forward
nodeport
clusterip - only within cluster

