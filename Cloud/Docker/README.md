# Docker Guide #


## Docker Installation ##

Use the `setup_docker.sh` script contained here to install on Ubuntu, this was tested on Ubuntu 16.04.6 LTS.

you can test the installation afterwards with the following line:

`sudo docker run hello-world`

## Workflow

There may be a way around, at the moment finding the need to run all commands with sudo:


### find and pulling an image, in this case ubuntu

```sh
sudo docker search ubuntu
```

you'll see something like below:

```sh
NAME                                                      DESCRIPTION                                     STARS               OFFICIAL            AUTOMATED
ubuntu                                                    Ubuntu is a Debian-based Linux operating sys…   9680                [OK]                
dorowu/ubuntu-desktop-lxde-vnc                            Docker image to provide HTML5 VNC interface …   316                                     [OK]
rastasheep/ubuntu-sshd                                    Dockerized SSH service, built on top of offi…   223                                     [OK]
consol/ubuntu-xfce-vnc                                    Ubuntu container with "headless" VNC session…   180                                     [OK]
...

```

Then pull in the image you'd like with the following (inserting name of the image at the end)

```sh
sudo docker pull <image-name>
```

for example, if we'd like the first result -- which is just `ubuntu` -- we'd type:

```sh
sudo docker pull ubuntu
```

now you shold have an ubuntu image, and you can try shelling into it with the following:

```sh
sudo docker run -it ubuntu bash
```

### Shelling into image with usb support

if you'd like to include usb support for your image (to use usb while shelled in) first find the image name:

```sh
sudo docker images
```

you might for example see the following:

```sh
REPOSITORY                TAG                 IMAGE ID            CREATED             SIZE
ubuntu                    latest              4c108a37151f        10 days ago         64.2MB
hello-world               latest              fce289e99eb9        5 months ago        1.84kB
```

after deciding which one, use the image id (really only as much as you need it) and use it in the following 
line to use the docker image with usb access:

```sh
sudo docker run -t -i --privileged -v /dev/bus/usb:/dev/bus/usb <image_id> bash
```

If for example you wanted to use the `ubuntu` repo's image, you'd do:

```sh
sudo docker run -t -i --privileged -v /dev/bus/usb:/dev/bus/usb 4c1 bash
```

notice we really didn't need to use that many characters (in the above example, could have used just the first number for it to be unique)


### Commiting changes


after making a change to an image, use the following simple line to commit the change, best practice is to include a repo name and tag for reference.

```sh
sudo docker commit -m "<commit-message>"  [REPOSITORY[:TAG]]
```

your docker image must be running (it seems correct me if wrong):


```sh
sudo docker images
```

again you'll see something like this:

```sh
REPOSITORY                TAG                 IMAGE ID            CREATED             SIZE
ubuntu                    latest              4c108a37151f        10 days ago         64.2MB
hello-world               latest              fce289e99eb9        5 months ago        1.84kB
```

then start a shell in the process with:

```sh
sudo docker run -t -i <image-id> bash
```

...make some changes...

Now you want to commit the changes, keep your docker process open, in a new terminal or tmux-pane find the container id with the following:

```sh
sudo docker ps
```

output may look something like this:

```sh
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
a0e4a7cd1188        264                 "bash"              33 seconds ago      Up 32 seconds                           distracted_feistel
```

now you have the container id, you can commit with:

```sh
sudo docker commit -m "<message>" <container-id> <username>/<repo-name>:<tag-name>
```

for example, if we wanted to say we added vim to the above image.

Assuming you're dockerhub username is froggy-frog:

```sh
sudo docker commit -m "added vim" a0e froggy-frog/ubuntu-with-vim:now-with-vim
```

this wold create/update a repo of that name, and tag it (a convenient method for tracking last change, since it seems more difficult to view the commit message log)


### pushing to docker-hub


first you'll need to login (probably only once per session)
```sh
sudo docker login
```

afterwards you can push the repo to dockerhub with the following command:


```sh
sudo docker push <username>/<respository-name>
```

for example if froggyfrog was my dockerhub username, and I wanted to push the last commit from the ubuntu base (which we called `ubuntu-with-vim` since it's ubuntu base plus an apt-get for vim):

```sh
sudo docker push froggyfrog/ubuntu-with-vim
```

and you should now be able to see this on your profile page for docker hub : )

## Collection of Resources

[Docker Commit Docs](https://docs.docker.com/engine/reference/commandline/commit)
[Docker Run Docs](https://docs.docker.com/engine/reference/run/)
[Docker Volumes Docs](https://docs.docker.com/storage/volumes/)
[Blog post from Fabiorehm on how to run gui applications](http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/)
[General Docker cheat sheet](https://docs.docker.com/get-started/part2/#conclusion-of-part-two)
[How to save an image](https://blog.codeship.com/using-docker-commit-to-create-and-change-an-image/)
