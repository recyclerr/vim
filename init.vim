"Pathogen"
runtime vim-plug/plug.vim

call plug#begin("~/.config/nvim/plugged")
		"Ale"
		Plug 'dense-analysis/ale'
		
		"NERDTree + icons"
		Plug 'preservim/nerdtree'

		"Icons for plugins"
		Plug 'ryanoasis/vim-devicons'
		
		"Airline"
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		
		"vim-go"
		Plug 'fatih/vim-go'
call plug#end()

"NERDTree"
syntax on
filetype plugin indent on

"Dark background"
set background=dark

"Line numbers"
set number

"Command autocompletion"
set wildmenu

"Tabs are set to 4 spaces"
set tabstop=4

"Enable mouse"
set mouse=a

"Airline"
let g:airline_powerline_fonts = 1
let g:airline_theme = 'monochrome'

"Autostart"
function! OnEnter()
		if 0 == argc()
				NERDTree
		end
endfunction

au VIMEnter * call OnEnter()
