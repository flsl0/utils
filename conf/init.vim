set tags=.\tags,tags;
"set clipboard=unnamed
set clipboard+=unnamedplus
"set omnifunc=syntaxcomplete#Complete
set omnifunc=v:lua.vim.lsp.omnifunc
set ignorecase
set noinfercase
set fillchars+=vert:\ 
set complete+=k
"set complete+=i
set encoding=UTF-8
set splitbelow
"set splitright
set fileformats=unix,dos
set completeopt=menuone,noinsert,noselect

"au FileType * execute 'call setOmniFunc()'

let mapleader="!"
"let @a = 'ipwd^M^[<80>ku<80>ku<80>kuyy^[:cd ^R"^M'
let g:any_jump_search_prefered_engine = 'ag'
let g:any_jump_references_enabled = 1
let g:python_host_prog = 'D:\Python27\python.exe'
let g:indentLine_char_list = ['|', '|', '|', '|']
let g:indentLine_char = '|'
let g:ale_completion_enabled = 0
let g:ale_sign_column_always = 0
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'c': ['gcc'],
\}
let g:tig_explorer_use_builtin_term=0
let g:fzf_layout = { 'down': '~30%' }

" Shift + J/K moves selected lines down/up in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>v :vert winc ] <Enter>
nnoremap <leader>x :winc ] <Enter>
nnoremap <leader>d <C-]>

nnoremap <leader>gv :vert winc g] <Enter>
nnoremap <leader>gx :winc g] <Enter>
nnoremap <leader>gd g<C-]>
"nnoremap z b

nnoremap <leader>aj :AnyJump <Enter>
nnoremap <leader>n :w <Enter>
inoremap <leader>n <C-o>:w <Enter>
nnoremap <leader>ù :w <enter>
inoremap <leader>ù <c-o>:w <enter>
nnoremap <leader><leader>n :wa <Enter>
"nnoremap <leader>f :FZF <Enter>
nnoremap <leader>p "0p
nnoremap <leader>h :set invhlsearch <Enter> 
nnoremap <leader>T :NERDTreeToggle <Enter> 
nnoremap <leader>I :IndentLinesToggle <Enter> 
nnoremap <leader>i :tabnew /home/void/.config/nvim/init.vim<Enter> 
nnoremap <leader>l :set invnumber invrelativenumber<Enter> 
nnoremap <leader>a :ALEToggle<Enter> 
nnoremap <leader>c :AsyncRun C:\\Users\\FLDBE6FN\\Documents\\tools\\chrome-win\\chromium.exe --start-maximized --incognito --app<Enter> 
nnoremap <leader>o :set omnifunc=syntaxcomplete#Complete<Enter>
nnoremap <leader>O :set omnifunc=v:lua.vim.lsp.omnifunc<Enter>
nnoremap <leader>b iSystem.Diagnostics.Debugger.Break();<Esc>==
inoremap <leader>b <C-o>iSystem.Diagnostics.Debugger.Break();<Esc>==
nnoremap <leader>vi :Vista!!<Enter>
nnoremap <leader>vw :Vista focus<Enter>
nnoremap <leader>vf :Vista finder fzf:nvim_lsp<Enter>
nnoremap <leader>fr :FSToggle<Enter>
nnoremap - 3<C-y>
nnoremap + 3<C-e>

nnoremap <leader>te :terminal fish<Enter> i
nnoremap <leader>tt :tabnew <bar> terminal fish<Enter> i
nnoremap <leader>ts :new <bar> terminal fish<Enter> i
nnoremap <leader>tv :vertical new <bar> terminal fish<Enter> i
nnoremap <leader>tm :tabm<Enter>
"nnoremap <leader>tl :tablast<Enter>

nnoremap <leader>ge :TigOpenProjectRootDir<Enter>
nnoremap <leader>gt :tabnew <bar> TigOpenProjectRootDir<Enter>
nnoremap <leader>gs :new <bar> TigOpenProjectRootDir<Enter>
nnoremap <leader>gv :vertical new <bar> TigOpenProjectRootDir<Enter>

nnoremap <leader>m  :vertical new <bar> wincmd H <bar> vertical resize 25 <bar> set winfixwidth <bar> Oil .<Enter>
nnoremap <leader>me :Oil .<Enter>
nnoremap <leader>mt :tabnew <bar> Oil .<Enter>
nnoremap <leader>ms :new <bar> Oil .<Enter>
nnoremap <leader>mv :vertical new <bar> Oil .<Enter>

"nnoremap <leader>bt  :lua require('telescope-tabs').list_tabs(require('telescope.themes').get_ivy({}))<Enter>
nnoremap <leader>bt  :Windows<Enter>
nnoremap <Leader>a   :lua require'telescope.builtin'.tags(require('telescope.themes').get_ivy({}))<Enter>
"nnoremap <Leader>f   :lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({}))<Enter>
nnoremap <Leader>f   :Files<Enter>
nnoremap <Leader>fg  :lua require'telescope.builtin'.git_files(require('telescope.themes').get_ivy({}))<Enter>
nnoremap <leader>lg  :lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({}))<cr>
nnoremap <leader>w   :lua require'telescope.builtin'.lsp_dynamic_workspace_symbols(require('telescope.themes').get_ivy({}))<Enter>
"nnoremap <leader>bb  :lua require'telescope.builtin'.buffers(require('telescope.themes').get_ivy({}))<Enter>
nnoremap <leader>bb  :Buffers<Enter>
nnoremap <leader>bic :lua require'telescope.builtin'.lsp_incoming_calls(require('telescope.themes').get_ivy({}))<Enter>
nnoremap <leader>boc :lua require'telescope.builtin'.lsp_outgoing_calls(require('telescope.themes').get_ivy({}))<Enter>
nnoremap <leader>bd  :lua require'telescope.builtin'.diagnostics({ bufnr=0 })<Enter>
nnoremap <leader>bgc :lua require'telescope.builtin'.git_commits()<Enter>
nnoremap <leader>bgs :lua require'telescope.builtin'.git_status()<Enter>
nnoremap <leader>bgt :lua require'telescope.builtin'.git_stash()<Enter>

nnoremap <leader>fe :terminal fish vifm<Enter> i
nnoremap <leader>ft :tabnew <bar> terminal fish vifm<Enter> i
nnoremap <leader>fs :new <bar> terminal fish vifm<Enter> i
nnoremap <leader>fv :vertical new <bar> terminal fish vifm<Enter> i

inoremap <leader>; <C-o>A;<Esc>
nnoremap <leader>; A;<Esc>

inoremap . .<c-x><c-o>

nmap <silent> <leader>ap <Plug>(ale_previous_wrap)
nmap <silent> <leader>an <Plug>(ale_next_wrap)
inoremap {<CR> {<CR>}<C-o>O
xnoremap w iw
nnoremap <C-w>e :vertical new<Enter>

tnoremap <F1> <C-\><C-n>
tnoremap <C-w> <C-\><C-n><C-w>
tnoremap <leader><Esc> <Esc>

nnoremap <S-up> <C-w>+
nnoremap <S-down> <C-w>-
nnoremap <S-left> <C-w><
nnoremap <S-right> <C-w>>

nnoremap <S-k> <C-w>+
nnoremap <S-j> <C-w>-
nnoremap <S-h> <C-w><
nnoremap <S-l> <C-w>>

nnoremap <C-z> <C-y>
inoremap <C-z> <C-y>
vnoremap <C-z> <C-y>
xnoremap <C-z> <C-y>
snoremap <C-z> <C-y>
cnoremap <C-z> <C-y>
onoremap <C-z> <C-y>
"tnoremap <C-z> <C-y>

nnoremap <F1> <Nop>
inoremap <F1> <Nop>
vnoremap <F1> <Nop>
xnoremap <F1> <Nop>
snoremap <F1> <Nop>
cnoremap <F1> <Nop>
onoremap <F1> <Nop>

vmap > >gv
vmap < <gv

function! EchoRegister()
    let old_reg = getreg("0")
    exec ":cd ".old_reg 
endfunction

nnoremap <leader>cd :call EchoRegister()<cr>

function! PInsert2(item)
    let @z=a:item
    norm "zp
    call feedkeys('a')
endfunction

function! CompleteInfo()
    let nl=[]
    let l=complete_info()
    for k in l['items']
        if k['info'] && k['menu']
            call add(nl, k['word']. ' : ' .k['info'] . ' '. k['menu'] )
        else
            call add(nl, k['word'])
        endif
    endfor
    call fzf#vim#complete(fzf#wrap({ 'source': nl,'reducer': { lines -> split(lines[0], '\zs :')[0] },'sink':function('PInsert2')}))
endfunction

inoremap <c-a> <cmd>:call CompleteInfo()<Enter>

function! OpenAgResult(command)
    let s:uri = expand('<cWORD>')
    echom s:uri
    echom s:uri[:0]
    echom s:uri[1:]
    "if s:uri[:0] =~ ':'
    "if matchstr(s:uri[:0], ":") != ""
    "s:uri = s:uri[1:]
    "endif
    "let s:uri = substitute(s:uri, ':', '', '')
    if s:uri != ''
        "silent exec "normal \<C-W>\<C-w>"
        silent exec "normal \<C-W>\<Up>"
        silent exec ":".a:command." ".s:uri
        silent exec "normal \<C-W>\<Down>"
        :redraw!
    endif
endfunction
nnoremap <leader>ov :call OpenAgResult("vsp")<CR>
nnoremap <leader>os :call OpenAgResult("sp")<CR>
nnoremap <leader>ot :call OpenAgResult("tabnew")<CR>

let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        exec "set winfixheight"
        try
            exec "buffer " . g:term_buf
        catch
            call termopen("fish", {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <leader>t :call Term_open(10)<cr>
tnoremap <leader>t <C-\><C-n>:call Term_open(10)<cr>

function! Term_open(height)
    botright new
    exec "resize " . a:height
    exec "set winfixheight"
    call termopen("fish", {"detach": 0})
    let g:term_buf = bufnr("")
    startinsert!
endfunction

let g:clip_buf = 0
let g:clip_win = 0

function! OpenClipboard(height)
    if win_gotoid(g:clip_win)
        hide
    else
        try
            exec "sbuffer " . g:clip_buf
            exec "resize " . a:height
            exec "set winfixheight"
            let clipboard=getreg("+")
            exec ":%d"
            exec "normal! Go".clipboard
            exec ":0d"
            exec ":%y"
        catch
            "botright new
            exec "botright new"
            exec "resize " . a:height
            exec "set winfixheight"
            exec ":put"
            exec ":0d"
            exec ":%y"
            let g:clip_buf = bufnr("")
        endtry
        let g:clip_win = win_getid()
    endif
endfunction

"nnoremap <leader>c :10new<cr>:put<cr>:0d<cr>:%y<cr>
nnoremap <leader>c :call OpenClipboard(10)<cr>

function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>z :ZoomToggle<Enter>
tnoremap <silent> <leader>z <C-\><C-n>:ZoomToggle<Enter>

function! OpenURLUnderCursor()
    " let s:uri = expand('<cWORD>')
    let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
    let s:uri = substitute(s:uri, '?', '\\?', '')
    let s:uri = substitute(s:uri, '}', '', '')
    let s:uri = substitute(s:uri, '"', '', '')
    let s:uri = shellescape(s:uri, 1)
    exec "echo ".s:uri
    if s:uri != ''
        silent exec "!chrome --incognito --app ".s:uri
        :redraw!
    endif
endfunction
nnoremap <leader>g :call OpenURLUnderCursor()<CR>

function! OpenURLUnderCursorInChromium()
    " let s:uri = expand('<cWORD>')
    let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
    let s:uri = substitute(s:uri, '?', '\\?', '')
    let s:uri = substitute(s:uri, '}', '', '')
    let s:uri = substitute(s:uri, '"', '', '')
    let s:uri = shellescape(s:uri, 1)
    exec "echo ".s:uri
    if s:uri != ''
        silent exec "AsyncRun C:\\Users\\FLDBE6FN\\Documents\\tools\\chrome-win\\chromium.exe --start-maximized --incognito --app ".s:uri
        exec "echo 'executed'"
        :redraw!
    endif
endfunction
nnoremap <leader>gg :call OpenURLUnderCursorInChromium()<CR>

function! OpenPathUnderCursor()
    let s:uri = expand('<cWORD>')
    let s:uri = substitute(s:uri, '?', '\\?', '')
    let s:uri = shellescape(s:uri, 1)
    echo s:uri
    "exec "!echo ".s:uri.""
    if s:uri != ''
        silent exec "!explorer ".s:uri.""
        :redraw!
    endif
endfunction
nnoremap <leader>e :call OpenPathUnderCursor()<CR>

set termguicolors
colorscheme ziggy

" colors for anyjump popup
hi Pmenu guibg=#1b1b1b ctermbg=Black ctermfg=White

packadd fzf
packadd fzf-vim
packadd visualmulti
packadd vimcompletesme
packadd anyjump
packadd nerdtree
packadd nvim-lspconfig
packadd toggle-lsp-diagnostics
packadd nvim-dap
packadd timer
packadd vista
packadd nvim-dap
packadd plenary
packadd telescope
packadd telescope-tabs
packadd hop
packadd fsread
packadd nvim-pylance
packadd omnisharp-extended-lsp
packadd instant
packadd oil
packadd zoxide
packadd nxwm
packadd asyncrun

"lua require('smear_cursor').enabled = true
"lua require('smear_cursor').cursor_color = '#d3cdc3'

let g:instant_username = "USERNAME"

nnoremap <leader>ne :lua splittingStrategy = voidFunc <Enter>
nnoremap <leader>nt :lua splittingStrategy = vim.cmd.tabnew <Enter>
nnoremap <leader>ns :lua splittingStrategy = vim.cmd.split <Enter>
nnoremap <leader>nv :lua splittingStrategy = vim.cmd.vsplit <Enter>

nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>db <cmd>lua require'dap'.toggle_breakpoint()<Enter>
nnoremap <silent> <Leader>dB <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>dbm <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
nnoremap <silent> <Leader>dh <Cmd>require('dap.ui.widgets').hover()<CR>

let g:vista_icon_indent = ["└── ", "├── "]

let g:vista_default_executive = 'nvim_lsp'

let g:vista_fzf_preview = ['right:0%']

let g:vista#renderer#enable_icon = 0

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap S <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"lua require'lspconfig'.pyright.setup{}

"lua require'lspconfig'.omnisharp.setup{cmd = { "/home/void/tools/omnisharp/omnisharp-bin", "--languageserver" , "--hostPID", tostring(pid) };on_attach = on_attach,}

nnoremap <space>e :lua vim.diagnostic.open_float()<Enter>
nnoremap <space>sh :lua vim.lsp.buf.signature_help()<Enter>
nnoremap <space>N :lua vim.diagnostic.goto_prev()<Enter>
nnoremap <space>n :lua vim.diagnostic.goto_next()<Enter>
nnoremap <space>r :lua vim.lsp.buf.references()<Enter>
nnoremap <space>rn :lua vim.lsp.buf.rename()<Enter>
nnoremap <space>i :lua vim.lsp.buf.implementation()<Enter>
"nnoremap <space>v :vsp<Enter>:lua vim.lsp.buf.implementation()<Enter>
"nnoremap <space>s :sp<Enter>:lua vim.lsp.buf.implementation()<Enter>
"nnoremap <space>t :tabnew<Enter>:lua vim.lsp.buf.implementation()<Enter>
nnoremap <space>v :vsp<Enter>:lua vim.lsp.buf.definition()<Enter>
nnoremap <space>s :sp<Enter>:lua vim.lsp.buf.definition()<Enter>
nnoremap <space>t :tabnew<Enter>:lua vim.lsp.buf.definition()<Enter>
nnoremap <space>d :lua vim.lsp.buf.definition()<Enter>
nnoremap <space>a :lua vim.lsp.buf.code_action()<Enter>
nnoremap <space>h :lua vim.lsp.buf.hover()<Enter>
nnoremap <space>pl :lua peek_definition()<Enter>

nnoremap <space>td :ToggleDiag <Enter>
nnoremap <space>tv <Plug>(toggle-lsp-diag-vtext)
nnoremap <space>ts <Plug>(toggle-lsp-diag-signs)

nnoremap s :HopChar1<enter>
nnoremap S :HopWord<enter>

"buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

"let g:OmniSharp_server_path = '/home/void/tools/omnisharp/omnisharp-bin'
"let g:OmniSharp_highlighting = 0

"packadd indentline
"packadd ale

" set sw=4 sts=4 et
" %!xxd
" empty quickfix list
" call setqflist([]) 
set sw=4 sts=4 et

lua << EOF
-- append _init_.lua
EOF
