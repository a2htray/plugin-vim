"��bundle������
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

"���ٱ�дhtml����
Bundle 'mattn/emmet-vim'

"�Զ��ر�
Bundle 'AutoClose'

"�����������
Plugin 'altercation/vim-colors-solarized'
syntax enable
set background=dark
colorscheme solarized

"�Զ����ݼ���ʹ��ģ���ı�
Plugin 'vim-scripts/snipMate'
let g:snippets_dir = "C:/Users/Administrator/.vim/bundle/snipMate/snippets/"  "��������Ƶ�����������Ҫ��

"
Plugin 'nono/jquery.vim'
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery







"���Ҹ���
set hls

"�������
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gk2312

"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"���consle�������
language messages zh_CN.utf-8

"����ˮƽ������
set guioptions+=b

"�����ɱ����ļ�
set nobackup

"�޸�ʱ�����ɱ����ļ�
set noswapfile

"��������
set gfn=Consolas:h12

"�����к�
set nu

"����tabΪ4���ո�
set ts=4
set expandtab

"��ʷ��������� 
set history=100

"���ļ����ⲿ�ı�ʱ�Զ���ȡ
set autoread

"�̳�ǰһ�е�������ʽ���ر������ڶ���ע��
set autoindent

"ͳһ����Ϊ4
set softtabstop=4
set shiftwidth=4



"�����Զ���ȫ  ������ݼ�Ctrl+X+O��
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascr��pt set omnifunc=javascr��ptcomplete#CompleteJS
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

"ӳ���
imap <C-Q> <C-X><C-O>
"imap <CR> <CR><space><space><space><space>
