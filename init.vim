let $NVIM_HOME="~/.config/nvim"
let $NVIM_PLUGGED= join([$NVIM_HOME, "plugged"], "/")
let $NVIM_CONFIG= join([$NVIM_HOME, "config.d"], "/")

call plug#begin('~/.vim/plugged')
Plug 'ntpeters/vim-better-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'trevordmiller/nova-vim'
Plug 'neomake/neomake'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'pearofducks/ansible-vim'
Plug 'liuchengxu/vim-which-key'
Plug 'mbbill/undotree'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree' | Plug 'xuyuanp/nerdtree-git-plugin'
call plug#end()

"" Load custom configurations for plugins
"
for config in split(globpath($NVIM_CONFIG, '*.vim'), '\n')
    exe 'source' config
endfor

" vim:set ft=vim et sw=2:
