#!/bin/bash
sudo apt install -y \
  make \
  entr \
  fish \
  git \
  xdotool
  # build-essential \
  # libffi-dev \
  # libssl-dev \
  # zlib1g-dev \
  # liblzma-dev \
  # libbz2-dev \
  # libreadline-dev \
  # libsqlite3-dev \
  # libopencv-dev
  # tk-dev

# Install python
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
eval "source ~/.bash_profile"

pyenv install 3.10
pyenv global 3.10
# Install poetry
curl -sSL https://install.python-poetry.org | python3 -

# Install fish config
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# install starship
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bash_profile
eval "source ~/.bash_profile"

# for fish
mkdir -p ~/.config/fish
touch ~/.config/fish/config.fish
echo "set -x PYENV_ROOT $HOME/.pyenv" >> ~/.config/fish/config.fish
echo "set -x PATH  $PYENV_ROOT/bin $PATH" >> ~/.config/fish/config.fish
echo "pyenv init - | source" >> ~/.config/fish/config.fish
echo "starship init fish | source" >> ~/.config/fish/config.fish
