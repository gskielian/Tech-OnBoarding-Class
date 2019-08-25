# Maintenance #

Readme with info on maintenance of images and containers on machine.

## Cleaning Up Images ##

list images with the following command

```sh
sudo docker image ls --all
```

select image-id and replace the `<image-id>` section below with this

```sh
sudo docker image rm <image-id>
```

## Cleaning Up Containers ##

list containers with the following command

```sh
sudo docker container ls --all
```

select container-id and replace the `<container-id>` section below with this:


```sh
sudo docker container rm <container-id>
```

## Removing All Unused Objects

if using sudo, your root dir will start to get cluttered with unused docker containers/images

use the following judiciously after backing up as much as you can in case removing something you need (e.g. docker-hub)

```sh
sudo docker system prune
```


```sh
sudo docker system prune --volumes
```
[further actions are discussed on this website](https://linuxize.com/post/how-to-remove-docker-images-containers-volumes-and-networks/)

