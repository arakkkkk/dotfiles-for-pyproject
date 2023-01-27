#!/bin/bash
sudo apt install -y make
sudo apt install -y entr
sudo apt install -y fish
curl -sS https://starship.rs/install.sh | sh
fish
starship init fish | source

# Install python
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
mkdir ~/.config
ln -fsn ~/.config/config.fish ./config.fish
source ~/.config/config.fish
pyenv install 3.10
# Install poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
