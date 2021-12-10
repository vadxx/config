CONF_DIR=~/.config
NVIM_DIR=$CONF_DIR/nvim
FISH_DIR=$CONF_DIR/fish
TMUX_C=.tmux.conf
mkdir -p $NVIM_DIR

chsh -s /usr/bin/fish
mkdir -p $NVIM_DIR $FISH_DIR

curl -o ~/$TMUX_C https://raw.githubusercontent.com/vadxx/config/main/$TMUX_C
curl -o $FISH_DIR/config.fish https://raw.githubusercontent.com/vadxx/config/main/config.fish 
curl -o $NVIM_DIR/init.vim https://raw.githubusercontent.com/vadxx/config/main/init.vim
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall +qall!
source $FISH_DIR/config.fish
tmux source-file ~/$TMUX_C


