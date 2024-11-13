



"tabs and spacing






set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smartindent


set guicursor=n-c:block,i-v-ci-ve:ver50,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175

"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait175



set guifont=SourceCodePro-Light\ 11




"other
set nu
set number
set hidden
"set nowrap
set fo-=l
set fo+=t
set tw=100
set noswapfile
set scrolloff=12

set signcolumn=yes



set undodir=~/.vim/undodir
set undofile
set relativenumber
set laststatus=2
set backup
set history=50
set ruler
set encoding=utf8
set showcmd
set hlsearch
set mouse=a
set incsearch


set exrc
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes




" source $HOME/.config/nvim/vim-plug/plugins.vim

