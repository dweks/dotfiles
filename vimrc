if $TERM == "xterm-256color"
    set t_Co=256
endif

colorscheme slate
"" SEARCH
set encoding=utf-8
set showcmd "shows partial command at end of status bar
set laststatus=2 " shows status line on all windows 

"" INDENT
set autoindent "newline stays indented
set tabstop=4 
set softtabstop=4 "4 spaces when press tab key
set shiftwidth=4 "4 spaces when use > to indent
set expandtab "uses appropriate spaces for tab in insert mode 

"" TEXT RENDERING
syntax enable
set textwidth=90 "puts anything after 90 chars + whitespace on a new line
set nowrap "wraps text that reaches edge of window
set linebreak "avoid wrapping a line in middle of word (set wrap to use)
set scrolloff=5 "keeps cursor near center of window (lower numbers give normal buffer)
:nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>
set sidescrolloff=5

"" INTERFACE
set ruler " shows column/line in status bar
set title "shows file being edited in window title
set wildmenu " tab autocomplete in command mode shown in list
set mouse=a

" Set leader prefix
let maplocalleader = "\\"

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

" insert bracket pairs
inoremap () ()<Esc>i
inoremap [] []<Esc>i
inoremap {} {}<Esc>i

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
hi MatchParen cterm=bold ctermfg=197 ctermbg=235

" Number Line
hi LineNr ctermfg=242 ctermbg=235
hi CursorLine cterm=none ctermbg=234 ctermfg=none
hi CursorLineNr cterm=none ctermbg=234 ctermfg=228
set number "Shows the number line"
set nocursorcolumn "shows the column (remove 'no' to show)
set cursorline  "shows the line

" Fold Column
hi FoldColumn cterm=none ctermbg=235 ctermfg=66
hi Folded cterm=none ctermbg=235 ctermfg=66
set foldnestmax=3
set foldmethod=indent
set foldcolumn=1
set foldenable
setlocal foldmethod=syntax
setlocal foldlevelstart=99

" Miscellaneous
hi SpecialKey ctermfg=229
hi Visual cterm=none ctermbg=58 ctermfg=231
hi Normal cterm=none ctermbg=235
hi ErrorMsg cterm=none ctermbg=0 ctermfg=82
hi ModeMsg cterm=bold ctermfg=190 ctermbg=233

" Search/Autofill
hi Search ctermbg=233 ctermfg=230
hi IncSearch cterm=bold ctermbg=239 ctermfg=226
set incsearch "when searching with / start hiing with each character"
set hlsearch "hi all search matches"

" Autofill
hi Pmenu cterm=none ctermbg=233 ctermfg=245
hi PmenuSel cterm=none ctermbg=235 ctermfg=226
hi PmenuSbar cterm=none ctermbg=237 
hi PmenuThumb cterm=none ctermbg=136

" Tabline
hi TabLine cterm=none ctermbg=237 ctermfg=247
hi TabLineFill cterm=none ctermfg=249 ctermbg=237
hi TabLineSel cterm=none ctermbg=235 ctermfg=227
hi Title cterm=none ctermfg=248
set showtabline=2

" Status Line/Split
hi StatusLine cterm=none ctermbg=240 ctermfg=230
hi StatusLineNC cterm=none ctermbg=237 ctermfg=248
hi VertSplit cterm=none ctermbg=237 ctermfg=237

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
