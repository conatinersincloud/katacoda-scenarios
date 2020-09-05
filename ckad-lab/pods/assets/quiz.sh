kubectl delete pod --all --grace-period=0 --force
kubectl run busybox1 --image=busybox:1.32.0 --command -- sleep 3600
kubectl run busybox2 --image=busybox:latest --command -- sleep 4600
kubectl run busybox3 --image=busybox:1.32.0-uclibc --command -- sleep 5600
