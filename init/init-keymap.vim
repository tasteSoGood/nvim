" 自定义快捷键

" use space as leader
let mapleader = " "

" edit configuration file
nnoremap <silent><leader>ev :vsplit $MYVIMRC<cr>
nnoremap <silent><leader>sv :w \| source $MYVIMRC<cr>

" 用HL表示行首和行末，禁用默认按键
noremap H ^
noremap L $
noremap ^ <nop>
noremap $ <nop>

" 上下移动整行
nnoremap <silent><M-j> :.m.+1<cr>
nnoremap <silent><M-k> :.m.-2<cr>
vnoremap <silent><M-j> :m '>+1<cr>gv=gv
vnoremap <silent><M-k> :m '<-2<cr>gv=gv

" 分屏打开终端
nnoremap <silent><M-t> :sp<cr>:term<cr>

" 复制/粘贴到系统剪切板
noremap <leader>y "+y
noremap <leader>p "+p

