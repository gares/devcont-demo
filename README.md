# Demo of a dev container for Rocq

## Set up docker (only the first time)

On Ubuntu I had to

```
sudo apt-get install docker.io docker-buildx
sudo adduser tassi docker # my user
sudo reboot # or logout and login again
```

## Set up code (only the first time)

```
code --install-extension ms-vscode-remote.remote-containers
```

## Clone and open the repository

```
git clone https://github.com/gares/devcont-demo.git
code https://github.com/gares/devcont-demo
```

Now click on the `Reopen in Container` popup, or type
F1 and then `Reopen in Container`.

The image will be built on the fly after downloading the base image (about 4G).
The right version of vscoq will be installed in code (this may take some time,
wait until the vscoq panel shows up). 

Stepping through a.v should work.

# Uploading the image to dockerhub (TODO, I have not tried)

It should be possible to add the line

```json
  "image": "yourname/image:tag",
```

after (or in place of)

```json
"build": { "dockerfile": "Dockerfile" },
```

in .devcontainer/devcontainer.json once the image automatically
built is tagged via `docker tag ... ` and published via `docker push ...`.


