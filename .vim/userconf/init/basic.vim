if &term =~ '256color'
    set t_ut=
endif

filetype plugin indent on
set t_Co=256
set expandtab
set shiftwidth=4
set backspace=2
set synmaxcol=200
set laststatus=2
set clipboard+=unnamed
set nobackup
set nopaste
set nowritebackup
set noswapfile
set showmatch matchtime=1
set showmatch
set autoindent
set number
set smarttab
set ruler
set ignorecase
set incsearch
set hlsearch
set list
set timeout timeoutlen=1000 ttimeoutlen=50
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
set cmdheight=1
set fillchars-=vert:\| | set fillchars+=vert:\ 
set rtp+=/usr/local/opt/fzf

autocmd QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif
