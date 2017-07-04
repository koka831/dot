set encoding=utf-8
scriptencoding utf-8
syntax on

if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/dotfiles/dein')
let s:dein_repos_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if ! isdirectory(s:dein_repos_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repos_dir
endif
execute 'set runtimepath^=' . s:dein_repos_dir

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    let s:toml          = s:dein_dir . '/dein.toml'
    let s:lazy_toml     = s:dein_dir . '/dein_lazy.toml'

    call dein#load_toml(s:toml, {'lazy':0})
    call dein#load_toml(s:lazy_toml, {'lazy':1})

call dein#end()
call dein#save_state()

if dein#check_install()
    call dein#install()
endif
endif

runtime! userconf/init/*.vim

filetype plugin indent on
