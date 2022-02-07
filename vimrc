if $TERM == "xterm-256color"
    set t_Co=256
endif

colorscheme slate
" SEARCH
set encoding=utf-8
set showcmd "shows partial command at end of status bar

"" INDENT
set autoindent "newline stays indented
set tabstop=4 
set softtabstop=4 "4 spaces when press tab key
set shiftwidth=4 "4 spaces when use > to indent
set expandtab "uses appropriate spaces for tab in insert mode 

" TEXT RENDERING
syntax enable
set nowrap "wraps text that reaches edge of window
set scrolloff=5 "keeps cursor near center of window (lower numbers give normal buffer)
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>
set sidescrolloff=5

"" INTERFACE
set autoread "if file changes outside of vim, reload with changes automatically
set wildmenu " tab autocomplete in command mode shown in list
set mouse=a "enable mouse
set cmdheight=1
set nospell
set nocursorcolumn

"" MISCELLANEOUS
"set spell spelllang=en_us "set spell check language to us english
autocmd InsertEnter * hi CursorLine ctermbg=234
autocmd InsertLeave * hi CursorLine ctermbg=236
autocmd InsertEnter * hi CursorLineNr cterm=bold ctermbg=234 ctermfg=15
autocmd InsertLeave * hi CursorLineNr cterm=bold ctermbg=239 ctermfg=231

" Set leader prefix
let maplocalleader = "\\"
nnoremap <Tab> <C-w>

" Tab switching to ctrl+h, ctrl+l
nnoremap <C-h> gT
nnoremap <C-l> gt

" source with Ctrl+s
nnoremap <C-s> :source $VRC<CR>

" scooch lines above/below
nnoremap <C-i> ddkP 
nnoremap <C-n> ddp 

" remove brackets/quotes
nnoremap <C-\><C-\> ma%mb%x`bx`a
nnoremap <C-\>" maf"xF"x`a

" wrap in brackets/quotes
xnoremap <C-\>( <Esc>`<i(<Esc>`>a)<Esc>
xnoremap <C-\>{ <Esc>`<i{<Esc>`>a}<Esc>
xnoremap <C-\>[ <Esc>`<i[<Esc>`>a]<Esc>
xnoremap <C-\>" <Esc>`<i"<Esc>`>a"<Esc>

" move cursor left/right in insert mode
inoremap <C-l> <Esc>la
inoremap <C-h> <Esc>i

" Make curly block
imap {{{ {<CR>}<Esc>ko<Tab>

" Wild Menu (tab autocomplete in command line)
hi WildMenu cterm=bold ctermfg=235

" Syntax
hi Constant ctermfg=169
hi Comment ctermfg=242
hi Statement cterm=none ctermfg=179
hi Keyword ctermfg=139
hi Type ctermfg=110
hi MatchParen cterm=bold ctermfg=232 ctermbg=240

" Number/cursor Line
hi LineNr ctermfg=242 ctermbg=235
hi CursorLine cterm=none ctermbg=234 ctermfg=none
hi CursorLineNr cterm=bold ctermbg=234 ctermfg=15
hi CursorColumn cterm=none ctermbg=236 ctermfg=none
set number "Shows the number line"
set cursorline  "shows the line

" Fold Column
hi FoldColumn cterm=none ctermbg=235 ctermfg=66

" Miscellaneous
hi SpecialKey ctermfg=229
hi Visual cterm=none ctermbg=239 ctermfg=255
hi Normal cterm=none ctermbg=235
hi ErrorMsg cterm=none ctermbg=0 ctermfg=82
hi ModeMsg cterm=bold ctermfg=15 ctermbg=233

" Search/Autofill
hi Search cterm=none ctermbg=237 ctermfg=255
hi IncSearch cterm=none ctermbg=231 ctermfg=226
set incsearch "when searching with / start hiing with each character"
set hlsearch "hi all search matches"

" Autofill
hi Pmenu cterm=none ctermbg=237 ctermfg=250
hi PmenuSel cterm=none ctermbg=234 ctermfg=255
hi PmenuSbar cterm=none ctermbg=237 
hi PmenuThumb cterm=none ctermbg=241

" Tabline
hi TabLine cterm=none ctermbg=234 ctermfg=243
hi TabLineSel cterm=none ctermbg=238 ctermfg=231
hi TabLineFill cterm=none ctermbg=236 ctermfg=2
hi Title cterm=none ctermfg=250
set showtabline=2

" Status Line/Split
hi StatusLine cterm=none ctermbg=239 ctermfg=250
hi StatusLineNC cterm=none ctermbg=234 ctermfg=241
hi VertSplit cterm=none ctermbg=237 ctermfg=237
set laststatus=2 " shows status line on all windows 
set statusline=%#sq_Unsaved#%M%#sq_FileName#%r\ %<%F%h\ %#HLname#%=\ %l\/%L\ (%P)\ \|\ %c\ 


" Custom
hi sq_Unsaved cterm=bold ctermbg=202 ctermfg=202
hi sq_Position cterm=none ctermbg=243 ctermfg=187 
hi sq_FileName cterm=none ctermbg=237 ctermfg=253

if &term =~ "xterm\\|rxvt"
  " use an yellow cursor in insert mode
  let &t_SI = "\<Esc>]12;yellow\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif
