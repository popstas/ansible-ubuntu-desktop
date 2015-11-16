# links
https://github.com/search?o=desc&p=5&q=ansible+ubuntu&s=stars&type=Repositories&utf8=%E2%9C%93
https://github.com/jdauphant/ansible-ubuntu-desktop
https://github.com/fabiokr/ansible-ubuntu
https://github.com/kalos/ansible-desktop


# vagrant
sudo ansible-galaxy install denkhaus.vagrant
#ansible-galaxy install jdauphant.sublimetext
https://raw.githubusercontent.com/mitchellh/vagrant/v1.7.2/version.txt


# virtualbox
deb http://download.virtualbox.org/virtualbox/debian wily contrib
virtualbox-5.0


# syncthing, http://apt.syncthing.net/
## Add the release PGP keys:
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

## Add the "release" channel to your APT sources:
echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list

## Update and install syncthing:
sudo apt-get update
sudo apt-get install syncthing

## autorun
http://docs.syncthing.net/users/autostart.html#on-ubuntu-like-systems

## syncthing gtk
add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get install syncthing-gtk


# docker
https://github.com/geerlingguy/ansible-vagrant-examples/tree/master/docker
sudo usermod -aG docker {{username}} # https://docs.docker.com/installation/ubuntulinux/#giving-non-root-access


# chrome
deb http://dl.google.com/linux/chrome/deb/ stable main
aptitude install google-chrome-stable


# skype
deb http://archive.canonical.com/ubuntu wily partner
aptitude install skype


# sublime
https://github.com/popstas/sublime


# fpp
https://github.com/facebook/PathPicker


# systray
for ubuntu 15.10 - http://www.webupd8.org/2015/05/on-demand-system-tray-for-ubuntu.html


# gnome-terminal-solarized
https://github.com/Anthony25/gnome-terminal-colors-solarized/tree/master/colors/dark_alternative


# powerline fonts
pip install powerline-status
https://github.com/powerline/fonts


# git config
git config --global user.email "popstas@gmail.com"
git config --global user.name "Stanislav Popov"


# thefuck


# hotkeys in java apps
https://bugs.launchpad.net/unity/+bug/1226962
ppa:attente/java-non-latin-shortcuts


# global menu in ububtu 15.10
Настройки - Оформление - Режим - Показывать меню окна в заголовке окна
Возможно нужно установить перед этим:
sudo apt-get install indicator-appmenu hud
PhpStorm заблокировал эту фичу:
https://youtrack.jetbrains.com/issue/IDEA-69424
https://youtrack.jetbrains.com/issue/IDEA-141725


# terminal alt-ctrl-f1: цвета


# phpstorm unity shortcut


# monut ntfs partitions
/etc/fstab
UUID=D0BCD343BCD322B0 /media/data            ntfs-3g    defaults              0       0
UUID=C404702504701C9C /media/media            ntfs-3g    rw,uid=1000,nosuid,nodev,allow_other,default_permissions,blksize=4096              0       0


# for phpstorm, see https://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit
echo fs.inotify.max_user_watches = 524288 >> /etc/sysctl.conf
sysctl -p


# dotfiles
https://github.com/popstas/dotfiles


# hipchat
https://www.hipchat.com/downloads#linux-install


# video drivers
При установке ubuntu 15.10 оказалось, что все драйвера ati поломаны, поэтому запускался сначала с nomodeset.
Переключился на видео intel


# ms core fonts, не ставятся автоматом, т.к. не принята лицензия, надо переустановить
aptitude purge ttf-mscorefonts-installer
aptitude install ttf-mscorefonts-installer
