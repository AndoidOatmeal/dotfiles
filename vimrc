" get rid of Vi compatibility mode. SET FIRST!
set nocompatible          

" filetype detection[ON] plugin[ON] indent[ON]
filetype plugin indent on 

" enable 256-color mode.
set t_Co=256              

" enable syntax highlighting (previously syntax on).
syntax enable             

" set colorscheme
colorscheme zenburn       

" show line numbers
set number                

" last window always has a statusline
set laststatus=2          

" activates indenting for files
filetype indent on        

" Don't continue to highlight searched phrases.
set nohlsearch            

" But do highlight as you type your search.
set incsearch             

" Always show info along bottom.
set ruler                 

" auto-indent
set autoindent            

" tab spacing
set tabstop=4             

" unify
set softtabstop=4         

" indent/outdent by 4 columns
set shiftwidth=4          

" always indent/outdent to the nearest tabstop
set shiftround            

" use spaces instead of tabs
set expandtab             

" use tabs at the start of a line, spaces elsewhere
set smarttab              

" don't wrap text
set nowrap                
