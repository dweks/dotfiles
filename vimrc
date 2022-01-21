if $TERM == "xterm-256color"
set t_Co=256
endif

syntax on
colorscheme slate
set encoding=utf-8
set showcmd
set nocursorcolumn
set nowrap
set laststatus=2 
set autoindent "newline stays indented
set tabstop=4 "4 spaces when press tab key
set shiftwidth=4 "4 spaces when use > to indent
set ruler
set so=5 "keeps cursor near center of window (lower numbers give normal buffer)
:nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" Tab switching to ctrl+h, ctrl+l
nnoremap <C-h> gT
nnoremap <C-l> gt

" Adds blank line below/above (normal mode)
nnoremap <C-j> mno<Esc>`n
nnoremap <C-k> mnO<Esc>`n

" source with Ctrl+s
nnoremap <C-s> :source $VRC<CR>

" Scooch lines above/below
nnoremap <C-n> ddp 
nnoremap <C-i> ddkP 

" swap next line with current
nnoremap ds mnkddp`n

" add semicolon to end of line
nnoremap ;; ma$a;<Esc>`a


" remove brackets/quotes
nnoremap <C-\><C-\> ma%mb%x`bx`a
nnoremap <C-\>" maf"xF"x`a

" wrap in brackets/quotes
xnoremap <C-\>( <Esc>`<i(<Esc>`>a)<Esc>
xnoremap <C-\>{ <Esc>`<i{<Esc>`>a}<Esc>
xnoremap <C-\>[ <Esc>`<i[<Esc>`>a]<Esc>
xnoremap <C-\>" <Esc>`<i"<Esc>`>a"<Esc>

" insert bracket pairs
inoremap () ()<Esc>i
inoremap "" ""<Esc>i
inoremap [] []<Esc>i
inoremap {} {}<Esc>i
" Make curly block
imap {{{ <Esc>$o{<CR><Esc>ko<Tab>

" complement to insert bracket pairs - moves out of bracket
inoremap <C-l> <Esc>la
inoremap <C-h> <Esc>i


" add semicolon to end of line (does nto work): nnoremap <C-;> mn<S-4>a;<Esc>`n





" Syntax
hi Constant ctermfg=169
hi Comment ctermfg=242
hi Statement cterm=none ctermfg=179
hi Keyword ctermfg=139
hi Type ctermfg=110
hi MatchParen cterm=bold ctermfg=197 ctermbg=235

" Number Line
hi LineNr ctermfg=242
hi CursorLine cterm=none ctermbg=234 ctermfg=none
hi CursorLineNr cterm=none ctermbg=234 ctermfg=87
set number "Shows the number line"
set cursorline 

" Fold Column
hi FoldColumn cterm=none ctermbg=235 ctermfg=66
hi Folded cterm=none ctermbg=235 ctermfg=66
set foldnestmax=1
set foldmethod=indent
set foldcolumn=0
setlocal foldmethod=syntax
setlocal foldlevelstart=99

" Miscellaneous
hi SpecialKey ctermfg=238
hi Visual cterm=none ctermbg=60 ctermfg=15
hi Normal cterm=none ctermbg=235
hi ErrorMsg cterm=none ctermbg=0 ctermfg=82
hi ModeMsg cterm=underline ctermbg=154 ctermfg=0

" Search/Autofill
hi Search ctermbg=237 ctermfg=202
hi IncSearch cterm=bold ctermbg=none ctermfg=82
hi Pmenu cterm=none ctermbg=236 ctermfg=245
hi PmenuSel cterm=none ctermbg=235 ctermfg=158 
hi PmenuSbar cterm=none ctermbg=237 
hi PmenuThumb cterm=none ctermbg=241 
set incsearch "when searching with / start hiing with each character"
set hlsearch "hi all search matches"

" Tabline
hi TabLine cterm=none ctermbg=237 ctermfg=247
hi TabLineFill cterm=none ctermbg=237
hi TabLineSel cterm=none ctermbg=234 ctermfg=87
hi Title cterm=none
set showtabline=2

" Status Line/Split
hi StatusLine cterm=none ctermbg=24 ctermfg=15
hi StatusLineNC cterm=none ctermbg=236 ctermfg=248
hi VertSplit cterm=none ctermbg=236 ctermfg=236

