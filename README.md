# dockerhub-update-demo
A simple demo for github action + dockerhub update
### Dockerfile: 
  Describe to build the docker image from the **Dockerfile**.
### .github/workflows/(anyname).yml:
  Describe the basic steps to push new image to the docker after build.
  1. Build the new *image* from the **Dockerfile** 
  2. Login dockerhub with `github.secret_token`, which stored the dockerhub ID/password
  3. Push new <font color=red>colorimage</font> to dest.
