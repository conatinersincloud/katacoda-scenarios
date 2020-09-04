## Run Command
### Create a single container pod with name first-pod using image nginx and tag 1.18.0

<details>
  <summary>Solution</summary>
    Use the Imperative command to create the POD as below.
    
    `kubectl run first-pod --image=nginx:1.18.0 --restart=Never`{{execute}}
</details>

---

## Get Command 
### View the created pod using ```get``` command

<details>
  <summary>Solution</summary> 
    Get pod with pod name:

      `kubectl get pod first-pod`{{execute}}  
    > Note: if the status of the pod is not Running, you can watch the pod like this`kubectl get pod first-pod`{{execute}} . Once the status is Running, you can exit this command with CTL + C

    As you notice this pod is 1/1 ready which means the 1 container is running out of total of 1 container. This is important as some cases you may notice the pod status is running however there would be ```0``` containers running. In those scenarios you may need to inspect the pod events for the errors and fix it.

    If one needs to know additional information of pod such as Node name and IP address, then use:

      `kubectl get pod first-pod -o wide`{{execute}}
</details>

---

## Describe Command
### View the events of the pod using ```describe``` command

<details>
  <summary>Solution</summary> 
    Describe command displays the pod detials, events and status.

    `kubectl describe pod first-pod`{{execute}}
</details>