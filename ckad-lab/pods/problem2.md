## INSPECT Pod
### Inspect the POD that has been created in the default namespace and note the status of the pod

<details>
  <summary>Solution</summary>
    Use the get command to view the pods in default namespace  
        
    `kubectl get pod`{{execute}}  
    
    As you notice the status of the pod named ```error-pod``` is "ErrImagePull". To more understand the reason run the describe command to view the events.  

    `kubectl describe pod error-pod`{{execute}}  

    In the events it shows the reason for the failure as "Failed to pull image nginx:1.1.1" which is expected as there is not tag 1.1.1 for this image. 

</details>

---

## SET Command
To edit pod you have two options in this case. Edit the pod using ```edit``` command or use ```set``` command to set the correct image. Here set command is preferred.

### Set the image of the POD to use a valid nginx tag 1.19.2

<details>
  <summary>Solution</summary>
    set command is handy if image is the only changes to be done. To use this you need to know what is the name of the conainer defined in the pod. In this case the container name is ```error-pod```
        
    `kubectl set image pod error-pod error-pod=nginx:1.19.2 `{{execute}}  

    You can inspect the status of the Pod using the Watch using --watch or -w

    `kubectl get pod error-pod -w`{{execute}}
</details>

