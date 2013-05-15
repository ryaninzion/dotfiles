set number
syntax on
set tabstop=3
set shiftwidth=3
set smartindent
set autoindent

"For autocompletion
set wildmode=list:longest

set foldenable

set guifont=Consolas:h11

if has('gui_running')
	colorscheme solarized
else
	colorscheme default
endif

"Check current buffer file in Chrome
abbrev chrome :!start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "file://%:p"<cr>

"Shortcut to .vimrc
nmap ,ev :tabedit $MYVIMRC<cr>

"Automatically change working directory to that of file in buffer
autocmd BufEnter * cd %:p:h

"Source vimrc after editing and saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

"Shortcut for NerdTreeToggle
nmap ,nt :NERDTreeToggle<cr>


