"查找高亮
set hls

"设置编码
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gk2312

"避免乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"中文
language messages zh_CN.utf-8

"显示横向条
set guioptions+=b

"不生成备份文件
set nobackup

"修改时不自成备份文件
set noswapfile

"设置字体及大小
set gfn=Consolas:h12

"显示行号
set nu

"一个tab为4个空格
set ts=4
set expandtab

"历史记录为100条
set history=100

"外部文件修改时自动导入
set autoread

"自动缩进
set autoindent

"unknow
set softtabstop=4
set shiftwidth=4

"代码提示
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascr¨©pt set omnifunc=javascr¨©ptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"unknow
filetype plugin on
filetype indent on

"语法高亮
syn on

"---------------------------------------------------------------------
"------------------------键盘映射 start-------------------------------
"---------------------------------------------------------------------
imap <C-Q> <C-X><C-O>

"---------------------------------------------------------------------
"---------------------配置Vundle插件 start----------------------------
"---------------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
""Plugin 'L9'
" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
""Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"快速编写HTML
Bundle 'mattn/emmet-vim'

"树型导航条
Bundle 'The-NERD-tree'

"自动关闭
Bundle 'AutoClose'

"solarized 主题
Plugin 'altercation/vim-colors-solarized'

"使用Tab进行快速编写已有的模版
Plugin 'vim-scripts/snipMate'

"下载对python的自动提示功能
Plugin 'rkulla/pydiction'

"---------------------------------------------------------------------
"---------------------配置Vundle插件 end------------------------------
"---------------------------------------------------------------------

"对Emment的配置
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"solarized主题设置
syntax enable
set background=dark
colorscheme solarized  "设置主题



