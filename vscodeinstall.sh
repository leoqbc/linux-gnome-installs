VERSION=1.45.1

PACKAGES=$HOME/installs-bag

INSTALLS=$HOME/installs

mkdir -p $PACKAGES

wget https://update.code.visualstudio.com/latest/linux-x64/stable -O $PACKAGES/vscode.stable.tar.gz 

mkdir -p $INSTALLS/Code

tar -xzvf $PACKAGES/vscode.stable.tar.gz -C $INSTALLS
