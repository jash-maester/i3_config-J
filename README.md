# i3_custom-build

# Install i3-gaps

  - Install Dependencies (use your own package manager):
```
sudo dnf install libxcb-devel xcb-util-keysyms-devel xcb-util-devel xcb-util-wm-devel xcb-util-xrm-devel yajl-devel libXrandr-devel startup-notification-devel libev-devel xcb-util-cursor-devel libXinerama-devel libxkbcommon-devel libxkbcommon-x11-devel pcre-devel pango-devel git gcc automake i3status dmenu i3lock xbacklight nitrogen-1.6.1-10.fc32.x86_64
```
***I have enabled RPM repos. So some packages maybe exclusive to them. Download them or their alternatives manually.***

 - Copy paste the following one-by-one:
```
git clone https://www.github.com/Airblader/i3 i3-gaps && cd i3-gaps

autoreconf --force --install

rm -rf build/

mkdir -p build && cd build/

../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers

make

sudo make install
```

# Modify Your DM or launch script just like any other i3 installation

This guide is meant for Fedora GNOME. So modify GDM as follows:

 - Open ```/etc/gdm/custom.conf``` Using the editor of your choice
 - Remove the '#' from the line 'WaylandEnable=flase' or add:
 ``` WaylandEnable=false```
 
 
# Clone the contents of this repo in ```~/.config/``` 
Such that your ```~/.config/``` directory in you home directory contains
```
 - i3
 - polybar
 - rofi
```
 
 
# Logout and log back in to i3 
 - On the login screen you will see a gear icon. Click on it and select i3.
 - Then enter your password and login to i3

 ***From Now on your $mod key will be your win key***
 
 
