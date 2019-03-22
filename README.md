# Code at the Edge Curriculum Materials


[![Build Status](https://travis-ci.org/code-at-the-edge/curriculum-materials.svg?branch=master)](https://travis-ci.org/code-at-the-edge/curriculum-materials)

This repo generates a Hugo site that hosts curriculum materials built for [Code At the Edge](https://github.com/code-at-the-edge). At present we don't have much here. The initial purpose of the repo is to make it easier to view rendered lessons, but it may later be used as part of the classroom environment and/or as a platform for generation of JSON to be ingested by the coding environment.

## Web Site Development

First, [install Hugo](https://gohugo.io/getting-started/installing/) (you will require v0.48+). Then get the repo:

```shell
git clone git@github.com:code-at-the-edge/curriculum-materials.git --recursive
```

If you need to update the submodule you can type  `git submodule update --init --recursive`

:rocket:

### Usage

First, start the hugo server from the root directory of your repo:

```shell
cd curriculum-materials
hugo server --navigateToChanged
xdg-open http://localhost:1313/curriculum-materials
```

Hugo will update as you work, though be warned that Firefox is not 100% reliable when it comes to reloading iframes, so you want to use Chrome.

### Adding Materials

For now we have one course, which is found in `content/courses/intro-workshop/`. Each lesson plan gets its own subdirectory which contains several files. Since it's a bit finicky, you may want to use the hugo [archetypes](https://gohugo.io/content-management/archetypes/) system to generate the new curriculum:

```shell
hugo new --kind lesson courses/intro-workshop/LESSON-TITLE
```
a new directory with the relevant content will be created as `courses/intro-workshop/LESSON-TITLE` and you can work there directly

### Viewing Your Work

Hugo should update automagically in your browser!

## Raspberry Pi Configuration

The following instructions will help you set up and configure a Raspberry Pi that will serve the curricular materials along with a code playground over a local network.

### Set Up

1. Make sure you have the following items:

    - Raspberry Pi 3
    - A microSD card

1. Flash the SD card with [Raspbian Stretch Lite](https://www.raspberrypi.org/downloads/raspbian/). For detailed instructions, see Raspberry Pi documentation on [Installing operating system images](https://www.raspberrypi.org/documentation/installation/installing-images/)

1. Create an empty file named **ssh** to enable SSH when the Raspberry Pi boots. This can be done can be done from a terminal or shell using the following command:

    ```
    $ touch /path/to/sd/boot/ssh
    ```

1. Insert the SD card into the Raspberry Pi.

1. Plug the Raspberry Pi  into your router so it has connectivity to the Internet. SSH into the Raspberry Pi with `ssh pi@raspberrypi.local` and password **raspberry**.

1. In your SSH session, run `passwd` and change your login password. It is very important to choose a strong password so others cannot remotely access your Raspberry Pi.

1. Make sure you enable the camera and expand the filesystem using the Raspberry Pi configuration: `sudo raspi-config`.

1. Run the **Code at the Edge** install script, then let the installation complete:

    ```
    $ wget https://raw.githubusercontent.com/code-at-the-edge/curriculum-materials/master/scripts/install && chmod +x install && ./install
    ```
### What this script does

- [x] download curriculum materials
- [x] download code playground
- [-] install and configure database for code playground
- [ ] install and configure router info
- [ ]
