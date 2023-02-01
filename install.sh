#!/bin/bash
sudo apt install -y \
  make \
  entr \
  fish \
  git \
  xdotool \
  build-essential \
  libffi-dev \
  libssl-dev \
  zlib1g-dev \
  liblzma-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  libopencv-dev
  # tk-dev
fish

# Install python
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
mkdir ~/.config
touch ~/.config/fish/config.fish
echo "set -x PYENV_ROOT $HOME/.pyenv" >> ~/.config/fish/config.fish
echo "set -x PATH  $PYENV_ROOT/bin $PATH" >> ~/.config/fish/config.fish
echo "pyenv init - | source" >> ~/.config/fish/config.fish
source ~/.config/config.fish
pyenv install 3.10
pyenv global 3.10
# Install poetry
curl -sSL https://install.python-poetry.org | python -

# Install fish config
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z
fisher install jethrokuan/fzf

# install starship
echo "starship init fish | source" >> ~/.config/fish/config.fish
curl -sS https://starship.rs/install.sh | sh
source ~/.config/config.fish
