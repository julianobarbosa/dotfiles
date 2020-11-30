" Python Path
let g:python_host_prog = expand('$HOME/.pyenv/versions/neovim2/bin/python')
let g:pythol2_host_prog = expand('$HOME/.pyenv/versions/neovim2/bin/python')
let g:python3_host_prog = expand('$HOME/.pyenv/versions/neovim3/bin/python')

" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

nmap <space>r :RnvimrToggle<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>ez :e ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Habit
let mapleader=','
let tabstop=4
set relativenumber
set expandtab
set shiftwidth=4
filetype plugin on

" greatest remap ever
" vnoremap <leader>p

" python
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_fix_on_save = 1
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fixers = {
\    '*': ['remove_trailing_lines', 'trim_whitespace'],
\    'python': ['black', 'isort'],
\}

:call extend(g:ale_linters, {
    \'python': ['flake8', 'pydocstyle', 'bandit', 'mypy'], })

" Map movement through errors without wrapping.
nmap <silent> <C-k> <Plug>(ale_previous)
nmap <silent> <C-j> <Plug>(ale_next)

colorscheme gruvbox
set background=dark
