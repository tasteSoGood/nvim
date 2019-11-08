# NeoVim configuration file

This is my neovim configuration file, use `vim-plug` as vim plugin manager, and use several plugins to deal with my diary programming requirements.

- Auto Compelete
    - YouCompleteMe
- Markdown
    - vim-markdown
- Python
    - python-mode
- File Manager
    - nerdtree
- Snippet
    - vim-snippets
    - ultisnips
- LaTeX
    - vimtex

## How to install?


1. First, clone this repository.
2. Second, run

    ```bash
    cp -r ./nvim ~/.config/
    ```

    if you want to share the same configuration file with vim, these commands should be run:

    ```bash
    ln -s ~/.config/nvim ~/.vim
    ln -s ~/.config/nvim/init.vim ~/.vimrc
    ```

3. open `nvim`, run command in the command mode:
    
    ```vim
    PlugInstall
    ```

Wait for a second, and enjoy your new vim!
