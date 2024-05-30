# Lance's dotfiles and other config

## Setup dotfiles

1. `git clone https://github.com/lparsons/dotfiles.git ~/dotfiles`

2. `cd ~/dotfiles`

3. `./install.sh`

## Setup Tmux Plugin Manager and install plugins

1. `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

2. Start tmux then `Prefix` - `I` (capital I)

## Install [Miniforge](https://github.com/conda-forge/miniforge)

1. Install miniforge

    ```bash
    curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
    bash Miniforge3-$(uname)-$(uname -m).sh
    ```

2. Configure [bioconda]() channels

    ```bash
    conda config --add channels nodefaults
    conda config --add channels bioconda
    conda config --add channels conda-forge
    conda config --set channel_priority strict
    ```

## [Install NeoVim](https://github.com/neovim/neovim/blob/master/INSTALL.md#appimage-universal-linux-package) and plugins

1. Install neovim

    ```bash
    mkdir -p ~/.local/nvim/VERSION
    cd ~/.local/nvim/VERSION
    
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage
    
    cd ~/.local/nvim
    ln -s VERSION default

    cd ~/.local
    mkdir bin
    cd bin
    ln -s ~/.local/nvim/default/nvim.appimage nvim
    ```

2. Install [vim-plug](https://github.com/junegunn/vim-plug) and plugins

    ```bash
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ```

    Reload the file or restart Vim, then you can,

    `:PlugInstall` to install the plugins
    `:PlugUpdate` to install or update the plugins
    `:PlugDiff` to review the changes from the last update

3. Create python3 environment (set correct path in `.vimrc`)

    ```bash
    mamba create -n neovim3 pynvim
    ```

## Update `.bashrc`

   ```bash
   # Set nvim as default editor (replace vi/vim)
    if type "nvim" &> /dev/null; then    
        alias vi="nvim"    
        alias vim="nvim"    
        alias vimdiff='nvim -d'    
        export EDITOR=nvim    
    fi 
    
    # Setup promptline
    source "${HOME}/.shell_prompt.sh"
    ```
