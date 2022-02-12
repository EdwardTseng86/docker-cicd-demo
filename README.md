# dockerhub-cicd-demo
A simple demo for github action + dockerhub update
### Dockerfile: 
  Describe to build the docker image from the **Dockerfile**.

### .github/workflows/(anyname).yml:
  Describe the basic steps to push new image to the docker after build.
  1. Add code from **Github market action-docker Setup Buildx**
  2. Login dockerhub with `github.secret_token`, which stored the dockerhub ID/password
  3. Push new <font color=red>image</font> to dest.

#### Buildx in github.action
  If we use
  `Run docker buildx build --platform linux/arm,linux/arm64,linux/amd64  -t ***/my_nginx . --push`
  The error would occur because github.action currently not supported for docker driver. :
>error: multiple platforms feature is currently not supported for docker driver. 
>Please switch to a different driver (eg. "docker buildx create --use")
##### Solve
Use the Docer official code in  **[Github market action-docker Setup Buildx](https://github.com/marketplace/actions/docker-setup-buildx)** to solve.

  
