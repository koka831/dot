let [plugins, ftplugin] = dein#load_cache_raw(['/Users/koka/.vim/rc/dein.toml', '/Users/koka/.vim/rc/dein_lazy.toml'], 1)
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/koka/.vim/dein'
let g:dein#_runtime_path = ''
let &runtimepath = '/Users/koka/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/Users/koka/.vim/after,/Users/koka/.vim/dein/repos/github.com/Shougo/dein.vim'
