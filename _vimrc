"对bundle的设置
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp +=~/.vim/bundle/Vundle.vim
set rtp +=~/.vim/bundle/emmet-vim
set rtp +=~/.vim/bundle/AutoClose
set rtp +=~/.vim/bundle/vim-colors-solarized
set rtp +=~/.vim/bundle/snipMate
set rtp +=~/.vim/bundle/jquery.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to r::efresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" 

"快速编写html代码
Bundle 'mattn/emmet-vim'

"自动关闭
Bundle 'AutoClose'

"这个是主题插件
Plugin 'altercation/vim-colors-solarized'
syntax enable
set background=dark
colorscheme solarized

"自定义快捷键，使用模版文本
Plugin 'vim-scripts/snipMate'
let g:snippets_dir = "C:/Users/Administrator/.vim/bundle/snipMate/snippets/"  "这里如果移到其它电脑上要改

"
Plugin 'nono/jquery.vim'
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery







"查找高亮
set hls

"解决乱码
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gk2312

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"解决consle输出乱码
language messages zh_CN.utf-8

"设置水平滚动条
set guioptions+=b

"不生成备份文件
set nobackup

"修改时不生成备份文件
set noswapfile

"设置字体
set gfn=Consolas:h12

"设置行号
set nu

"设置tab为4个空格
set ts=4
set expandtab

"历史命令保存行数 
set history=100

"当文件被外部改变时自动读取
set autoread

"继承前一行的缩进方式，特别适用于多行注释
set autoindent

"统一缩进为4
set softtabstop=4
set shiftwidth=4



"代码自动补全  （按快捷键Ctrl+X+O）
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascrīpt set omnifunc=javascrīptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

source $VIMRUNTIME/mswin.vim
behave mswin
imap <cr> <cr><left><right>
map o o<left><right>
imap <c-]> {<cr>}<c-o>O<left><right>
noremap <f6> =a{
syn on
"colo koehler
filetype indent on
autocmd BufEnter * lcd %:p:h

"映射键
imap <C-Q> <C-X><C-O>
"imap <CR> <CR><space><space><space><space>
