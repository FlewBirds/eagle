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

Replication Controller:

A ReplicationController has three essential parts

A label selector, which determines what pods are in the ReplicationController’s scope

A replica count, which specifies the desired number of pods that should be running

A pod template, which is used when creating new pod replicas


apiVersion: v1
kind: ReplicationController        ❶
metadata:
  name: kubia                      ❷
spec:
  replicas: 3                      ❸
  selector:                        ❹
    app: kubia                     ❹
  template:                        ❺
    metadata:                      ❺
      labels:                      ❺
        app: kubia                 ❺
    spec:                          ❺
      containers:                  ❺
      - name: kubia                ❺
        image: luksa/kubia         ❺
        ports:                     ❺
        - containerPort: 8080      ❺

❶ This manifest defines a ReplicationController (RC)
❷ The name of this ReplicationController
❸ The desired number of pod instances
❹ The pod selector determining what pods the RC is operating on
❺ The pod template for creating new pods


Replica Set Vs Replication & Selectors: Set-based vs Equity-based Selectors

Replica Set use Set-Based selectors while replication controllers use Equity-Based selectors.

Equity-Based Selectors: This type of selector allows filtering by label key and values. So, in layman terms, the equity-based selector will only look for the pods which will have the exact same phrase as that of the label. Example: Suppose your label key says app=nginx, then, with this selector, you can only look for those pods with label app equal to nginx.
Selector-Based Selectors: This type of selector allows filtering keys according to a set of values. So, in other words, the selector based selector will look for pods whose label has been mentioned in the set. Example: Say your label key says app in (nginx, NPS, Apache). Then, with this selector, if your app is equal to any of nginx, NPS, or Apache, then the selector will take it as a true result.

ReplicaSet vs DaemonSet

Daemonset run only one pod replica on each node, where as ReplicaSets scatter them around the all the wroker nodes


DaemonSet: run pods only on certain nodes?

this can be done by using node-selector property

Selectors types:

Exquity-based selectors
app=nginx

set-based selectors
In
!/NotIn
==
Exists
DoesNotExist






