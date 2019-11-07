" vimrc 配置文件
" 本文件将在多个平台上同步，形成一个统一风格的vim
" 本文件中的配置项可通过 :h configuration_name 来查看详细说明

" 关于编码的配置
set encoding=utf-8

" 有关缩进的配置
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" 关于外观的配置
set number
set relativenumber

" 查找的时候忽略大小写
set ignorecase

" 搜索到的文本高亮
set hlsearch

" 括号匹配
set showmatch

" 设置鼠标可用
set mouse=a

" 字体颜色
hi commet ctermfg=6
hi string ctermfg=green

" 界面配色
colorscheme elflord

" Mapping
let mapleader = " "
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :w \| source $MYVIMRC<cr>

noremap H ^
noremap L $
noremap ^ <nop>
noremap $ <nop>
nnoremap <leader>j ddp
nnoremap <leader>k dd2kp
nnoremap <leader>t :term<cr>

" 系统剪切板
noremap <leader>y "+y
noremap <leader>p "+p

" Vim-Plug
call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
    Plug 'godlygeek/tabular', {'for': 'markdown'}
    " vim-markdown
    Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
    let g:vim_markdown_folding_disabled = 0

    " vimtex plugin
    Plug 'lervag/vimtex', {'for': 'tex'}
    let g:vimtex_fold_enabled = 1
    let g:vimtex_view_method = 'zathura'
    let g:vimtex_quickfix_latexlog = {'default': 0}
    let g:vimtex_quickfix_mode = 0
    let g:vimtex_quickfix_open_on_warning = 0

    " YouCompleteMe
    Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
    " 补全窗口
    set completeopt=menu,menuone
    highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
    highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=darkgrey

    " snippet
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'ervandew/supertab'
    " 将Ctrl+空格作为代码片段补全的快捷键
    let g:UltiSnipsExpandTrigger = '<C-space>'
    let g:UltiSnipsJumpForwardTrigger = '<C-space>'
    let g:UltiSnipsJumpBackwardTrigger = '<S-C-space>'
    let g:UltiSnipsSnippetDirextories = ['~/.vim/UltiSnips/', '~/.vim/plugged/vim-snippets/UltiSnips/']
    let g:UltiSnipsEditSplit = "vertical"
    " 下面这一行如果不设置，ultisnips将无法对TeX文件补全
    let g:tex_flavor = "latex"

    " fzf
    Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install -all'}

    " python-mode
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
    let g:pymode_python = 'python3'
    let g:pymode_options_colorcolumn = 0
    let g:pymode_options_max_line_length = 120
call plug#end()

