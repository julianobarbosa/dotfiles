if exists('g:vscode')
    " VSCode extension
    source ~/.config/nvim/vscode-code-actions.vim
else
    " ordinary neovim
    source ~/.config/nvim/init-bootstrap.vim
endif
