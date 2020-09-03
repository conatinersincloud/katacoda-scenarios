# Create a ```single container pod``` with name first-pod using image nginx and tag 1.18.0

<details>
  <summary>Solution</summary>

  ```bash
    `kubectl run first-pod --image=nginx:1.18.0 --restart=Never`{{execute}}
  ```
</details>
