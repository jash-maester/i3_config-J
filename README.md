# i3_custom-build

[For now this build is fully working for Fedora systems or RHEL systems, because I tested on them. I will prepare a version fully compatible for ubuntu soon enough. Due to exams kind-of busy these days.]

```
***
I use both Gnome-Terminal & LukeSmith's-build of St. So all my configs are based on it.
$mod is the Start or Win key on keyboard.
$mod+Return -> will launch St
Ctrl+Alt+t -> will launch gnome-terminal
If you want to change it to your default terminal edit the configs. 
***
```

# Build or Install the following

  - Install Dependencies (use your own package manager or else build them from source):
    - i3-gaps -> https://github.com/Airblader/i3/wiki/installation
    - i3lock -> https://i3wm.org/i3lock/
    - polybar -> https://github.com/polybar/polybar
    - light-> https://github.com/haikarainen/light
    - nitrogen -> https://github.com/l3ib/nitrogen
    - rofi -> https://github.com/davatorium/rofi
    - dmenu (optional) -> https://tools.suckless.org/dmenu/
    - cmus (music) -> https://cmus.github.io/#home
    - Luke Smith's Build of st -> https://github.com/LukeSmithxyz/st
    
# BUILD THEM IF THE ABOVE PACKAGES ARE NOT AVAILABLE FOR YOUR DISTRO.

# ONE LINERS FOR THE PACKAGES AVAILABLE ON PACKAGE MANAGERS
## On Fedora
 
 ***I have enabled RPM repos. So some packages maybe exclusive to them. Download them or their alternatives manually.***
```
sudo dnf install libxcb-devel xcb-util-keysyms-devel xcb-util-devel xcb-util-wm-devel xcb-util-xrm-devel yajl-devel libXrandr-devel startup-notification-devel libev-devel xcb-util-cursor-devel libXinerama-devel libxkbcommon-devel libxkbcommon-x11-devel pcre-devel pango-devel git gcc automake i3status dmenu rofi i3lock light nitrogen-1.6.1-10.fc32.x86_64 cmus
```

## On Ubuntu:
```
sudo apt install -y libxcb1-dev libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake i3status dmenu i3lock xbacklight nitrogen rofi dmenu git
```
  ***Build the rest from source if something is missing. ***

# Modify Your DM or launch script just like any other i3 installation

This guide is meant for Fedora GNOME. So modify GDM as follows:

 - Open ```/etc/gdm/custom.conf``` Using the editor of your choice
 - Remove the '#' from the line 'WaylandEnable=false' or add:
 ``` WaylandEnable=false```
 
 
# Clone the repo in any suitable folder (not in your home directory)
Execute the ```install.sh``` script :
```
sh install.sh
```
 
 
# Logout and log back in to i3 
 - On the login screen you will see a gear icon. Click on it and select i3.
 - Then enter your password and login to i3

 ***From Now on your $mod key will be your win key***
 ## A Guide to all the keybindings and shortcuts and features will be discussed in the future, For now just go through the ```i3/config``` file. 
 
