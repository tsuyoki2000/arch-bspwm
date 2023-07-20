NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)

echo "${GREEN}Install bspwm..."
bash script/bspwm.sh
bash script/fcitx5-system.sh
bash script/yay.sh

bash script/pacman-conf.sh
bash script/neovim-config-minimal.sh
bash script/other-tool.sh

# 再起動
reboot
