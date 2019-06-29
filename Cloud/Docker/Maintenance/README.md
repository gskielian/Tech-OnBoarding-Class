# Maintenance #

Readme with info on maintenance of images and containers on machine.

## Cleaning Up Images ##

list images with the following command

```sh
sudo docker image ls --all
```

select image-id and replcae the `<image-id>` section below with this

```sh
sudo docker image rm <image-id>
```

## Cleaning Up Containers ##

list containers with the following command

```sh
sudo docker container ls --all
```

select container-id and replcae the `<container-id>` section below with this:


```sh
sudo docker container rm <container-id>
```
