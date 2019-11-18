" vim configuration file
" created by taster
"
" 本配置文件将遵循模块化的原则，分块加载各种任务的配置文件
" 其他配置文件都存放在 ./init/*.vim 中

" 避免重复加载
if get(s:, 'loaded', 0) != 0
    finish
else
    let s:loaded = 1
endif

" 本文件所在目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义加载命令
command! -nargs=1 LoadConfig exec 'source '.s:home.'/'.'<args>'

"-----------------------------------------------------------------
" load modules
"-----------------------------------------------------------------

" 基本设置
LoadConfig init/init-basic.vim
" 自定义快捷键
LoadConfig init/init-keymap.vim
" 主题 颜色
LoadConfig init/init-theme.vim
" 插件加载
LoadConfig init/init-plugins.vim

