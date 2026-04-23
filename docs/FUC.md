## Frequently Used Commands (FUC)

### Network Manager
`sudo systemctl restart NetworkManager`

### Arch Maintainance
https://fernandocejas.com/blog/engineering/2022-03-30-arch-linux-system-maintance/

### External display managed by xrandr and alsamixer (audio)
Discover external display: `xrandr`  
extend: `xrandr --output HDMI-1-0 --primary --left-of eDP-1`  
mirror: `xrandr --output HDMI-1-0 --same-as eDP-1 --auto`  
audio: `alsamixer` > Press F6

### ssh
to do stuff like clear, text editors, copy/paste etc
-> `export TERM=xterm-256color`

### Pacman
Remove cache of uninstalled programs: `paccache -ruk 0`
Keep only last 2 versions of packages(present and 1 before) and remove any other previous versions: `sudo paccache -drk 2`
