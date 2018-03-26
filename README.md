[![Docker Container Image Size](https://shields.beevelop.com/docker/image/image-size/cjimti/emacs/latest.svg)](https://hub.docker.com/r/cjimti/emacs/)
[![Docker Container Layers](https://shields.beevelop.com/docker/image/layers/cjimti/emacs/latest.svg)](https://hub.docker.com/r/cjimti/emacs/)
[![Docker Container Pulls](https://img.shields.io/docker/pulls/cjimti/emacs.svg)](https://hub.docker.com/r/cjimti/emacs/)

# Container-as-command: Emacs

I use this for servers with Docker but no emacs. The container works best and
is most transparent when it mounts the user's home directory. This requires a lot of
trust int the container. So who am I? You probably want to build your container
and loose the need to trust me on this one, it's up to you.

See the **Build Container** section below to make your own.

## Install / Run Emacs

Installing the container-as-command emacs is simply creating an alias
by adding this line to your .bash_profile or .bashrc:
```bash
alias emacs='docker run --rm -it -v "$PWD":/src -v "$HOME":/root cjimti/emacs'
```

Open a new terminal and run:
```bash
alias emacs
```

Run emacs:
```bash
emacs
```

The files in your current directory are mounted to the path `/src` in the container.

Open a file in the new emacs/docker command:
```bash
emacs ./somefile.yml
```

## Debug

```bash
docker run --rm -it -v "$(pwd)":/src --entrypoint sh cjimti/emacs
```

## Build Container

Change **cjimti** to your own Docker Hub username if you intend to push the container.

Build:
```bash
docker build -t cjimti/emacs .
```

Push:
```bash
docker push cjimti/emacs
```


