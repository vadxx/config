NVIM_DIR=~/.config/nvim

mkdir -p $NVIM_DIR
cd $NVIM_DIR && curl -O https://raw.githubusercontent.com/vadxx/config/main/.tmux.conf
cd ~ && curl -O https://raw.githubusercontent.com/vadxx/config/main/.tmux.conf
