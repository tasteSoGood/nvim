" 插件加载
filetype plugin on

" Vim-Plug
call plug#begin('~/.vim/plugged')
    " NERDTree
    Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
    " vim-markdown
    Plug 'godlygeek/tabular', {'for': 'markdown'}
    Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
    " vimtex plugin
    Plug 'lervag/vimtex', {'for': 'tex'}
    " snippet
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " fzf
    Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install -all'}
    " python-mode
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
    " vim-autoformat
    Plug 'Chiel92/vim-autoformat', {'for': 'python'}
    " nerdcommenter
    Plug 'scrooloose/nerdcommenter'
    " easymotion
    Plug 'easymotion/vim-easymotion'
    " vim-startify
    Plug 'mhinz/vim-startify'
    " tag-bar
    Plug 'majutsushi/tagbar'
    " fugitive
    Plug 'tpope/vim-fugitive'
    " coc for auto-complete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"-------------------------------
" NERDTree
"-------------------------------
noremap <silent><C-b> <esc>:NERDTreeToggle<cr>


"-------------------------------
" vim-markdown
"-------------------------------
let g:vim_markdown_folding_disabled = 1


"-------------------------------
" vimtex
"-------------------------------
let g:vimtex_fold_enabled = 1
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_latexlog = {'default': 0}
let g:vimtex_quickfix_mode = 0
let g:vimtex_quickfix_open_on_warning = 0


"-------------------------------
" Ultisnips
"-------------------------------
" 将Ctrl+空格作为代码片段补全的快捷键
let g:UltiSnipsExpandTrigger = '<C-space>'
let g:UltiSnipsJumpForwardTrigger = '<C-space>'
let g:UltiSnipsJumpBackwardTrigger = '<S-C-space>'
let g:UltiSnipsSnippetDirextories = ['~/.vim/UltiSnips/', '~/.vim/plugged/vim-snippets/UltiSnips/']
let g:UltiSnipsEditSplit = "vertical"
" 下面这一行如果不设置，ultisnips将无法对TeX文件补全
let g:tex_flavor = "latex"


"-------------------------------
" python-mode
"-------------------------------
let g:pymode_python = 'python3'
let g:pymode_options_colorcolumn = 0
let g:pymode_options_max_line_length = 120
" Disable all warning
let g:pymode_lint_ignore = ['W']
" Disable Qiuckfix window
let g:pymode_lint_cwindow = 0
let g:pymode_folding = 1


"-------------------------------
" vim-autoformat
"-------------------------------
let g:formatter_yapf_style = 'pep8'
au BufWrite *.py :Autoformat


"-------------------------------
" NERDCommenter
"-------------------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


"-------------------------------
" tag-bar (it requires exuberant-ctags)
"-------------------------------
let g:tagbar_ctags_bin = '/usr/bin/ctags'


"-------------------------------
" coc.vim
"-------------------------------
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-emmet', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore']
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]	=~ '\s'
endfunction
inoremap <silent><expr><TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr> <C-p> pumvisible() ? "\<C-p>" : "\<C-h>"
" Useful commands
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <leader>rn <Plug>(coc-rename)
