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

# 言語を日本語に設定
sudo localectl set-locale LANG=ja_JP.UTF-8

# キーボードを日本語キーボードに設定
# （Xシステムをセットアップする前に実行する必要がある）
sudo localectl set-keymap jp106

# bspwm ベースシステム
green "Installing bspwm..."
bash script/bspwm.sh

# fcitx5
green ""
green "Installing fcitx5..."
bash script/fcitx5-system.sh

## fcitx
#green ""
#green "Installing fcitx..."
#bash script/fcitx-system.sh

# yay
green ""
green "Installing yay..."
bash script/yay.sh

# pacman-conf 編集
green ""
green "Edit pacman-conf..."
bash script/pacman-conf.sh
echo "done."

# Neovim 設定ファイルを作成
green ""
green "Create Neovim-Config..."
#bash script/neovim-config-minimal.sh
bash script/neovim-nvchad-.sh
echo "done."

# ranger
green ""
green "Installing ranger..."
bash script/ranger.sh

# その他のツールインストール
green ""
green "Installing Other Tool..."
bash script/other-tool.sh

# Thunar
green ""
green "Installing Thunar..."
bash script/thunar.sh

# bash を fish に変更
green ""
green "Installing fish..."
bash script/fish.sh

# 設定ファイルのコピー
green ""
green "Copying Config File..."
# xfce4-terminal
mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
cp .config/xfce4/xfconf/xfce-perchannel-xml/xfce4-terminal.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/
sudo cp usr/share/xfce4/terminal/colorschemes/alacritty.theme /usr/share/xfce4/terminal/colorschemes/
# fish
mkdir -p $HOME/.config/fish
cp .config/fish/config.fish $HOME/.config/fish/
# polybar
mkdir -p $HOME/.config/polybar
cp .config/polybar/config.ini $HOME/.config/polybar/
echo "done."

# ----- 自分用の設定（ここから） -----
# フォント
green ""
green "Installing HackGen Font..."
bash script/font-hackgen.sh

# StarShip
green ""
green "Installing StarShip..."
bash script/starship.sh

# yazi
green ""
green "Installing yazi(CLI FileManager)..."
bash script/yazi.sh

# alacritty（xfce4-terminal が使えなくなった時用）
green ""
green "Installing alacritty..."
bash script/alacritty.sh

# ----- 自分用の設定（ここまで） -----

# 再起動
green ""
green "Install Complete."
green "Type 'reboot' or 'poweroff'"
#reboot
