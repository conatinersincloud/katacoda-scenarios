kubectl create ns prep
kubectl run prep-pod --image=nginx -n prep
kubectl create ns anotherprep
