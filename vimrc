"""
" Author:  Ivan Enderlin <ivan.enderlin@hoa-project.net>
"          Inspiration from Frédéric Hardy <frederic.hardy@mageekbox.net>
" License: Please, see COPYING.
"""

set t_Co=256
set nocompatible
set autoindent
set smartindent
set background=dark
set backspace=start,eol,indent
set browsedir=buffer
set cmdheight=1
set completeopt=menu,preview
set cursorline
set nocursorcolumn
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,mac,dos
set fillchars=vert:\ 
set fillchars=fold:\ 
set hlsearch
set incsearch
set keymodel=startsel
set laststatus=2
set listchars=eol:˼,tab:\|\ ,trail:⋅,precedes:←,extends:➜,nbsp:˽
set list
set backup
set backupdir=~/.vimbackup
set expandtab
set modeline
set swapfile
set nowrap
set nrformats=octal,hex
set ruler
set scrolljump=13
set scrolloff=10
set shiftwidth=4
set showcmd
set showmatch
set showmode
set showtabline=1
set gdefault
set sidescroll=1
set sidescrolloff=5
set smartcase
set smarttab
set switchbuf=usetab
set synmaxcol=1000
set tabstop=4
set title
set ttyfast
set noerrorbells
set viminfo='20,\"50,:20,%,n~/.viminfo
set wildmenu
set wildmode=full
set wildchar=<Tab>
set wildcharm=<C-Z>
set winminheight=0
set winminwidth=0
set whichwrap=<,>,h,l,[,]
set visualbell
set noerrorbells
set selection=inclusive
set splitbelow
set splitright
set noequalalways
set textwidth=80
set shell=/bin/zsh
set history=50
set number
set wildignore=*.swp

let mapleader=','

if v:version >= 703
    set undofile
    set undodir=~/.vimundo

    nnoremap <silent> <F2> :execute 'set ' . (&relativenumber ? 'number' : 'relativenumber')<CR>
endif

syntax enable
filetype plugin on

autocmd BufRead,BufNewFile *.phps,*.phar set filetype=php
autocmd BufRead,BufNewFile *.htm,*.html,*.phtml,*.xhtml,*.xsl,*.xslt,*.xsd,*.xyl set filetype=xml
autocmd BufRead,BufNewFile *.yaml set filetype=yml
autocmd BufRead,BufNewFile *.jsm set filetype=javascript
autocmd BufRead,BufNewFile *.pp set filetype=pp
autocmd BufRead,BufNewFile *.ml,*.caml,*.ocaml,*.oml,*.rml set filetype=ocaml
autocmd BufRead,BufNewFile *.mss set filetype=css
autocmd BufRead,BufNewFile COMMIT_EDITMSG set textwidth=72
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

vnoremap < <gv
vnoremap > >gv

inoremap <Leader>alpha   α
inoremap <Leader>beta    β
inoremap <Leader>gamma   γ
inoremap <Leader>delta   δ
inoremap <Leader>epsilon ε
inoremap <Leader>zeta    ζ
inoremap <Leader>eta     η
inoremap <Leader>theta   θ
inoremap <Leader>iota    ι
inoremap <Leader>kappa   κ
inoremap <Leader>lambda  λ
inoremap <Leader>mu      μ
inoremap <Leader>nu      ν
inoremap <Leader>xi      ξ
inoremap <Leader>omicron ο
inoremap <Leader>pi      π
inoremap <Leader>rho     ρ
inoremap <Leader>sigma   σ
inoremap <Leader>tau     τ
inoremap <Leader>upsilon υ
inoremap <Leader>phi     φ
inoremap <Leader>chi     χ
inoremap <Leader>psi     ψ
inoremap <Leader>omega   ω

inoremap <Leader>Alpha   Α
inoremap <Leader>Beta    Β
inoremap <Leader>Gamma   Γ
inoremap <Leader>Delta   Δ
inoremap <Leader>Epsilon Ε
inoremap <Leader>Zeta    Ζ
inoremap <Leader>Eta     Η
inoremap <Leader>Theta   Θ
inoremap <Leader>Iota    Ι
inoremap <Leader>Kappa   Κ
inoremap <Leader>Lambda  Λ
inoremap <Leader>Mu      Μ
inoremap <Leader>Nu      Ν
inoremap <Leader>Xi      Ξ
inoremap <Leader>Omicron Ο
inoremap <Leader>Pi      Π
inoremap <Leader>Rho     Ρ
inoremap <Leader>Sigma   Σ
inoremap <Leader>Tau     Τ
inoremap <Leader>Upsilon Υ
inoremap <Leader>Phi     Φ
inoremap <Leader>Chi     Χ
inoremap <Leader>Psi     Ψ
inoremap <Leader>Omega   Ω

inoremap <Leader>in     ∈
inoremap <Leader>forall ∀
inoremap <Leader>exists ∃
inoremap <Leader>C      ℂ
inoremap <Leader>N      ℕ
inoremap <Leader>P      ℙ
inoremap <Leader>Q      ℚ
inoremap <Leader>R      ℝ
inoremap <Leader>Z      ℤ
inoremap <Leader>+-     ±
inoremap <Leader>/=     ≠
inoremap <Leader>t      ⊤
inoremap <Leader>b      ⊥
inoremap <Leader><      〱
inoremap <Leader>plus   +
inoremap <Leader>minus  −
inoremap <Leader>times  ×

inoremap <Leader>up        ↑
inoremap <Leader>right     →
inoremap <Leader>down      ↓
inoremap <Leader>left      ←
inoremap <Leader>leftright ↔
inoremap <Leader>updown    ↕

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a> :Tabularize /><CR>
vmap <Leader>a> :Tabularize /><CR>

inoremap <Leader>&&lt  &amp;lt;
inoremap <Leader>&&&lt &amp;amp;lt;

let g:HgRoot=substitute(system("hg root --cwd " . getcwd()), "\n", "", "g")
let g:mqStatusPath = HgRoot . "/.hg/patches/status"
let g:HgPath=substitute(expand("%:p"), HgRoot, "", "g")
let g:HgName=system("basename " . HgRoot)

function! GetCurrentMqPatch()
  if filereadable(g:mqStatusPath)
     let patchesList = readfile(g:mqStatusPath)
     if len(patchesList) > 0
       return split(patchesList[-1], ':')[1]
     endif
  endif
endfunction

set titlestring=%{HgPath}\ in\ %{HgName}
set statusline=%1*\ %f\ %2*%=\ %{GetCurrentMqPatch()}\ 〈\ %{&modified?'✖':'✔'}\ 〈\ %{&encoding}:%{&fileformat}〈\ %r%y\ %3*\ %cc,%lL/%LL\ %3p%%

let s:_ = ''

function! s:ExecuteInShell(command, bang)
  let _ = a:bang != '' ? s:_ : a:command == '' ? '' : join(map(split(a:command), 'expand(v:val)'))

  if (_ != '')
    let s:_ = _
    let bufnr = bufnr('%')
    let winnr = bufwinnr('^' . _ . '$')
    silent! execute  winnr < 0 ? 'new ' . fnameescape(_) : winnr . 'wincmd w'
    setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap number
    silent! :%d
    let message = 'Execute ' . _ . '...'
    call append(0, message)
    echo message
    silent! 2d | resize 1 | redraw
    silent! execute 'silent! %!'. _
    silent! execute 'resize ' . line('$')
    silent! execute 'syntax on'
    silent! execute 'autocmd BufUnload <buffer> execute bufwinnr(' . bufnr . ') . ''wincmd w'''
    silent! execute 'autocmd BufEnter <buffer> execute ''resize '' .  line(''$'')'
    silent! execute 'nnoremap <silent> <buffer> <CR> :call <SID>ExecuteInShell(''' . _ . ''', '''')<CR>'
    silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . _ . ''', '''')<CR>'
    silent! execute 'nnoremap <silent> <buffer> <LocalLeader>g :execute bufwinnr(' . bufnr . ') . ''wincmd w''<CR>'
    nnoremap <silent> <buffer> <C-W>_ :execute 'resize ' . line('$')<CR>
    silent! syntax on
  endif
endfunction

command! -complete=shellcmd -nargs=* -bang Shell call s:ExecuteInShell(<q-args>, '<bang>')

function! <SID>:SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nmap <C-S-P> :call <SID>:SynStack()<CR>

vmap <C-c> :w !pbcopy<CR><CR>
imap <C-v> <Esc>:.r !pbpaste<CR>i

"function Copy() range
"  echo system(
"           \ "echo '".substitute(
"               \ join(getline(a:firstline, a:lastline), "\n"),
"               \ "'",
"               \ "'\"'\"'",
"               \ "g"
"           \ )."' | pbcopy"
"       \ )
"endfunction
"command -range=% -nargs=0 Copy :<line1>,<line2>call Copy()
"
"function Paste() range
"  echo system(
"           \ "echo '". substitute(
"               \ join(getline(a:firstline, a:lastline), "\n"),
"               \ "'",
"               \ "'\"'\"'",
"               \ "g"
"           \ )."' | hoa core:paste | pbcopy"
"       \ )
"endfunction
"command -range=% -nargs=0 Paste :<line1>,<line2>call Paste()

function! s:GitPrevious()
  let _ = expand('%')
  let filetype = &filetype

  execute ':silent! split ' . tempname()
  execute ':silent! 0r !git show HEAD~1:./' . _
  execute ':silent! $d'
  execute ':silent! set nomodifiable'
  execute ':silent! set readonly'
  execute ':silent! set ft=' . filetype
  setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile
endfunction
 
command! -nargs=0 GitPrevious call s:GitPrevious()

let &t_Co=256
let g:solarized_termcolors=256

colorscheme solarized
