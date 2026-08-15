#!/bin/bash

namefast="fastfetch"
namekitty="kitty"
dest_dirfast="/home/$USER/.config/${namefast}"
dest_dirkitty="/home/$USER/.config/${namekitty}"

THEME_DIR="$(cd "$(dirname "$0")" && pwd)"


echo "instalando meus pacotes"
sudo pacman -S --needed starship kitty fastfetch 

echo "removendo instalação anterior do tema (se existir)..."
rm -rf "$dest_dirfast"
rm -rf "$dest_dirkitty"

echo "copiando arquivos para .config"

cp -r "$THEME_DIR/fastfetch" "$dest_dirfast"
cp -r "$THEME_DIR/kitty"     "$dest_dirkitty"

: '
kwriteconfig6 --file kdeglobals --group General --key TerminalApplication kitty

SHORTCUT_NAME="Launch Kitty"
COMMAND="kitty"
KEY_COMBINATION="Meta+T"


kwriteconfig6 --file kglobalshortcutsrc --group "org.kde.kruncommandService" --key "_launch" "$COMMAND"
kwriteconfig6 --file kglobalshortcutsrc --group "org.kde.kruncommandService" --key "$SHORTCUT_NAME" "$KEY_COMBINATION,none,$SHORTCUT_NAME"

if qdbus6 org.kde.kglobalaccel /component/org_kde_kruncommandService org.kde.kglobalaccel.Component.allShortcutInfos >/dev/null 2>&1; then
    qdbus6 org.kde.kglobalaccel /component/org_kde_kruncommandService org.kde.kglobalaccel.Component.reconfigure
else
    echo "Atalho será aplicado após relogin"
fi
'


echo "concluido!"






