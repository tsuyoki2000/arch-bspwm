NORMAL=$(tput sgr0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)

function red() {
    echo -e "$RED$*$NORMAL"
}

function green() {
    echo -e "$GREEN$*$NORMAL"
}

function yellow() {
    echo -e "$YELLOW$*$NORMAL"
}

# bspwm ベースシステム
green "Install bspwm..."
bash script/bspwm.sh

# fcitx5
green "Install fcitx5..."
bash script/fcitx5-system.sh

# yay
green "Install yay..."
bash script/yay.sh

# pacman-conf 編集
green "Edit pacman-conf..."
bash script/pacman-conf.sh

# 最低限の Neovim 設定ファイルを作成
green "Create neovim-config..."
bash script/neovim-config-minimal.sh

# ranger
green "Install ranger..."
bash script/ranger.sh

# その他のツールインストール
green "Install Other Tool..."
bash script/other-tool.sh

# その他のツールインストール
green "Install Thunar..."
bash script/thunar.sh

# 再起動
reboot
