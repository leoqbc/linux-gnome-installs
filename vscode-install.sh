PACKAGES=$HOME/installs-bag

INSTALLS=$HOME/installs

mkdir -p $PACKAGES

wget https://update.code.visualstudio.com/latest/linux-x64/stable -O $PACKAGES/vscode.stable.tar.gz 

mkdir -p $INSTALLS

echo "Descompactando tar..."

tar -xzf $PACKAGES/vscode.stable.tar.gz -C $INSTALLS

touch $HOME/.local/share/applications/Code.desktop

cat > $HOME/.local/share/applications/Code.desktop <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=Visual Studio Code
Exec=$HOME/installs/VSCode-linux-x64/bin/code
Icon=$HOME/installs/VSCode-linux-x64/resources/app/resources/linux/code.png
Type=Application
Categories=Development;
EOF

echo "Icone criado"

echo 'Criando comando em CLI'

mkdir -p $HOME/.local/bin

touch $HOME/.local/bin/code

chmod +x $HOME/.local/bin/code

cat > $HOME/.local/bin/code <<EOF
#!/bin/bash

$HOME/installs/VSCode-linux-x64/bin/code $@ &
EOF