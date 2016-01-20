#!/bin/bash

#Do this after run PluginInstall in vim

cd vim/bundle/YouCompleteMe
./install.py --clang-completer --omnisharp-completer --gocode-completer --tern-completer --racer-completer
cd ../../


sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
