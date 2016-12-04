#!/bin/sh

# simple installer for Ubuntu https://github.com/EvilBeaver/OneScript

echo 'Download & install latest release'

wget http://oscript.io/downloads/night-build/deb
sudo dpkg -i deb

rm deb

sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

sudo su -c 'echo "deb http://download.mono-project.com/repo/debian wheezy main" > /etc/apt/sources.list.d/mono-xamarin.list'

sudo apt-get update
sudo apt-get install -f

echo "Installation complete"

which oscript

oscript
