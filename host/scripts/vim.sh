echo "Installing vim"
sudo apt-get install -y vim-gnome build-essential cmake
git clone git@github.com:katcipis/my.vim.git
cd my.vim
make
