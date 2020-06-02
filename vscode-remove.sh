PACKAGES=$HOME/installs-bag

INSTALLS=$HOME/installs

echo "Desinstalando VSCode"

rm -rfvvv $PACKAGES/vscode.stable.tar.gz
rm -rfvvv $INSTALLS/VSCode-linux-x64

rm -rfvvv $HOME/.local/share/applications/Code.desktop

echo 'Removendo do CLI'

rm -rfvvv $HOME/.local/bin/code