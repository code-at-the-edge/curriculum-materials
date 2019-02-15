# Instructions for RPi

The following instructions will help you set up and configure a Raspberry Pi that will serve the curricular materials along with a code playground over a local network.

## Set Up

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

## What this scriptdoes
- [x] download curriculum materials
- [x] download code playground
- [-] install and configure database for code playground
- [ ] install and configure router info
- [ ] other stuff

# Notes

Current version of script ha lots of notes. Use them to build further features (!)
