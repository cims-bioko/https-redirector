# HTTPS Redirector

A containerized http server configured to redirect any requests to the same path, but using the HTTPS
scheme. This was developed for the production CIMS deployment running on AWS. However, the container
is generally useful and has no project-specific details baked in.

## Usage

The container is built with docker and you can run it the normal way, just like any other docker image.
The important part is that you need to bind the container port 80 to the host's container port 80 for
it to be useful.

It is published on dockerhub, so unless you want to modify it, you can just use the published image:

```
docker run -p 80:80 cimsbioko/https-redirector
```

If you for some reason do want to build and run a modified version:

```
# Change the Dockerfile and any resources, then build with
docker build . -t myredirector

# Run the container you just created
docker run -p 80:80 myredirector
```
