# AUR のコンパイル済みパッケージが置いてあるリポジトリ
# AUR の全てのパッケージが置いてあるわけではない
# このスクリプトは手動で実行する必要がある
#（自動実行できるか試してない）

sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

# /etc/pacman.conf に情報追加
PACMAN_CONF="/etc/pacman.conf"
sudo sh -c "echo >> $PACMAN_CONF"
sudo sh -c "echo [chaotic-aur] >> $PACMAN_CONF"
sudo sh -c "echo Include = /etc/pacman.d/chaotic-mirrorlist >> $PACMAN_CONF"
