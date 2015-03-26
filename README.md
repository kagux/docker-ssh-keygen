Use this image to generate ssh keys once and share them will other containers.

##Usage
* `docker run -d --name ssh-key kagux/ssh-keygen` to generate keys. 
* `docker logs ssh-key` to print public key
* `docker run --rm -t --volumes-from ssh-key busybox ls /root/.ssh/` to access keys from another container
