VERSION=1.45.1

PACKAGES=$HOME/installs-bag

INSTALLS=$HOME/installs

mkdir -p $PACKAGES

wget https://update.code.visualstudio.com/latest/linux-x64/stable -O $PACKAGES/vscode.stable.tar.gz 

mkdir -p $INSTALLS

tar -xzvf $PACKAGES/vscode.stable.tar.gz -C $INSTALLS

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
