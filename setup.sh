NVIM_DIR=~/.config/nvim
mkdir -p $NVIM_DIR
curl -o $NVIM_DIR/init.vim https://raw.githubusercontent.com/vadxx/config/main/init.vim
curl -o ~/.tmux.conf https://raw.githubusercontent.com/vadxx/config/main/.tmux.conf
