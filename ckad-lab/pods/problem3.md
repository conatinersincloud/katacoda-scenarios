## Namespace
### Identify the namespace in which pod `prep-pod`{{copy}} has been created.

<details>
  <summary>Solution</summary>
    List the pod resoruces in all the available namespaces in the cluster using: 
    
    `kubectl get pod --all-namespaces`{{execute}}

    As you notice the prep-pod runs on `prep` namespace
</details>

---
## Edit Command 
### Edit pod `prep-pod`{{copy}} container to run the command `echo dummy`{{copy}}.

<details>
  <summary>Solution</summary> 
Edit the pod in the terminal editior by : `kubectl edit pod prep-pod -n prep`{{execute}}  

Ref to below snippet of the container:  
  
        spec:
        containers:
        - image: nginx
            name: prep-pod
            command:
            - /bin/sh
            - -c
            - echo dummy
            resources: {}}  
  
  As you noticed, on saving your changes, kubernetes will not let you change the pod exept few info like images, labels etc. However it would create a copy of your edits in to a yml file under `/tmp` directory. You may have to delete the existing pod and created again with the above created yml file as shown in below steps

</details>

---

## Delete Command
### Delete the `prep-pod` running in `prep` namespace

<details>
  <summary>Solution</summary>
    Delete a resoruce using `delete` command: 
    
    `kubectl delete pod prep-pod -n prep`{{execute}}

    Wait for the pod to delete and then proceed to below step.
</details>

---

## Create command
### Create a resoruce using `create` command.

<details>
  <summary>Solution</summary> 
  Supply the Temporary yml file created in above step as an argument to below command.

 `kubectl create -f /tmp/<YAML_FILE_NAME>.yml -n prep`{{copy}}  
  
Once succesfully created view the status of the pod by `kubectl get pod -n prep`{{execute}}.

</details>

---

## Logs command
### View the logs of the container to ensure the above command did executed successfullly.

<details>
  <summary>Solution</summary> 
  Use the `logs` command to view the any logs the container spits out during execitin. As in our case, container runs the `echo dummy` we shold se the message in its log.

 `kubectl logs prep-pod -n prep`{{execute}}  
  
For single container pod its not required to mention the container name to indicate which container pod logs is being asked.

</details>

