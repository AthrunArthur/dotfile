" PLUGINS CONFIG
" autoformat
  noremap <F3> :Autoformat<CR><CR>

" airline
  let g:airline_detect_modified=1
  let g:airline_detect_paste=1
  let g:airline_inactive_collapse=1
  let g:airline_powerline_fonts = 1
  "let g:bufferline_echo = 0
  "let g:airline#extensions#bufferline#enabled = 1
  let g:airline#extensions#syntastic#enabled = 1
  let g:airline#extensions#hunks#enabled = 1
  let g:airline#extensions#ctrlp#show_adjacent_modes = 1
  let g:airline#extensions#whitespace#enabled = 1
  let g:airline_theme='base16'
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  if GUI()
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    if !exists('g:airline_powerline_fonts')
      "let g:airline_left_sep = ''
      "let g:airline_right_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.linenr = ''
    endif
  endif

" buffergator
  nmap <silent><leader>b :EasyBufferHorizontal<CR>
  let g:easybuffer_horizontal_height = '15'

" ctrlp
  let g:ctrlp_cache_dir = $HOME.'/.vim/.ctrlp_cache'
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_extensions = ['funky']

  nmap <silent>cp :CtrlPMixed<CR>
  nmap <silent>cm :CtrlPMRUFiles<CR>
  nmap <silent>cf :CtrlPFunky<CR>
  nmap <silent>cl :CtrlPLine<CR>
  nmap <silent>cb :CtrlPBuffer<CR>
  nmap <silent>ct :CtrlPBufTag<CR>

  let g:ctrlp_custom_ignore = {
        \ 'dir': '\.git$\|\.hg$\|\.svn|\bower_components|\node_modules$',
        \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

  " On Windows use "dir" as fallback command.
  if WINDOWS()
    let s:ctrlp_fallback = 'dir %s /-n /b /s /a-d'
  elseif executable('ag')
    let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
  elseif executable('ack')
    let s:ctrlp_fallback = 'ack %s --nocolor -f'
  else
    let s:ctrlp_fallback = 'find %s -type f'
  endif

  let g:ctrlp_user_command = {
        \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
        \ 2: ['.hg', 'hg --cwd %s locate -i .'],
        \ },
        \ 'fallback': s:ctrlp_fallback
        \ }

" easymotion
  let g:EasyMotion_leader_key = 'e'
  hi link EasyMotionTarget ErrorMsg
  hi link EasyMotionShade  Comment

" emmet
  let g:user_emmet_leader_key = '!'

" indent guides
  let g:indentLine_char = '│'
  let g:indentLine_faster = 1

" NERDCommenter
  nmap ; <Plug>NERDCommenterToggle
  vmap ; <Plug>NERDCommenterToggle

" NERDTree
  map <silent> <C-o> :NERDTreeToggle<CR>
  let g:NERDTreeBookmarksFile = expand($HOME.'/.vim/.NERDTreeBookmarks')
  let g:NERDTreeWinPos = "left"
  let g:NERDTreeShowBookmarks = 1
  let g:NERDTreeWinSize = 40
  let g:NERDTreeChristmasTree = 0
  let g:NERDTreeCaseSensitiveSort = 1
  let g:NERDTreeQuitOnOpen = 0
  let g:NERDTreeShowHidden = 1
  let g:NERDTreeMouseMode = 2
  let NERDTreeAutoDeleteBuffer=1
  let g:NERDTreeIgnore=[
        \'\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
        \ '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$' ]

" rainbow parentheses
  let g:rainbow_active = 1

" signify
  let g:signify_sign_overwrite = 1
  let g:signify_sign_add = '+'
  let g:signify_sign_change = '!'
  let g:signify_sign_delete = '-'
  let g:signify_sign_delete_first_line = '-'

" startify
  let g:startify_change_to_dir          = 0
  let g:startify_enable_special         = 0
  let g:startify_files_number           = 8
  let g:startify_session_autoload       = 1
  let g:startify_session_delete_buffers = 1
  let g:startify_session_persistence    = 1

" swoop
  let g:swoopUseDefaultKeyMap = 0
  nmap f :call Swoop()<CR>
  vmap f :call SwoopSelection()<CR>
  nmap F :call SwoopMulti()<CR>
  vmap F :call SwoopMultiSelection()<CR>

" syntastic
  let g:syntastic_enable_balloons = 1
  let g:syntastic_auto_jump=0
  let g:syntastic_always_populate_loc_list=1
  let g:syntastic_auto_loc_list=1
  let g:syntastic_loc_list_height=5
  let g:syntastic_enable_signs=1
  let g:syntastic_error_symbol='✗'
  let g:syntastic_warning_symbol='⚠'

" tabularize
  nmap <leader>a& :Tabularize /&<CR>
  vmap <leader>a& :Tabularize /&<CR>
  nmap <leader>a# :Tabularize /#<CR>
  vmap <leader>a# :Tabularize /#<CR>
  nmap <leader>a= :Tabularize /^[^=]*\zs=<CR>
  vmap <leader>a= :Tabularize /^[^=]*\zs=<CR>
  nmap <leader>a=> :Tabularize /=><CR>
  vmap <leader>a=> :Tabularize /=><CR>
  nmap <leader>a: :Tabularize /:<CR>
  vmap <leader>a: :Tabularize /:<CR>
  nmap <leader>a:: :Tabularize /:\zs<CR>
  vmap <leader>a:: :Tabularize /:\zs<CR>
  nmap <leader>a, :Tabularize /,<CR>
  vmap <leader>a, :Tabularize /,<CR>
  nmap <leader>a,, :Tabularize /,\zs<CR>
  vmap <leader>a,, :Tabularize /,\zs<CR>
  nmap <leader>a<Bar> :Tabularize /<Bar><CR>
  vmap <leader>a<Bar> :Tabularize /<Bar><CR>

" undotree
  nmap <silent>U :UndotreeToggle<CR>
  " If undotree is opened, it is likely one wants to interact with it.
  let g:undotree_SetFocusWhenToggle=1

" vim-over
  nnoremap <C-h> :OverCommandLine<CR>%s/<C-r><C-w>/

" neocomplete
  let neocomplete_readme=expand('~/.vim/bundle/neocomplete/README.md')
  if WINDOWS() || filereadable(neocomplete_readme)
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#enable_auto_delimiter = 1
    let g:neocomplete#max_list = 15
    let g:neocomplete#force_overwrite_completefunc = 1

    " Use honza's snippets.
    let g:neosnippet#snippets_directory=expand($HOME.'/.vim/bundle/vim-snippets/snippets')

    " Define keyword.
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'

    " SuperTab like snippets behavior.
    imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: pumvisible() ? "\<C-n>" : "\<TAB>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: "\<TAB>"

    " Some convenient mappings
    imap <expr><C-k>  pumvisible() ? "\<C-p>" : "\<C-k>"
    imap <expr><C-j>  pumvisible() ? "\<C-n>" : "\<C-j>"
    imap <expr><Esc> pumvisible() ? "\<C-y>\<Esc>" : "\<Esc>"

    " Enable heavy omni completion.
    if !exists('g:neocomplete#sources#omni#input_patterns')
      let g:neocomplete#sources#omni#input_patterns = {}
    endif
    let g:neocomplete#sources#omni#input_patterns.c='[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
    let g:neocomplete#sources#omni#input_patterns.cpp='[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
    let g:neocomplete#sources#omni#input_patterns.xml='<[^>]*'
    let g:neocomplete#sources#omni#input_patterns.html='<[^>]*'
    let g:neocomplete#sources#omni#input_patterns.markdown='<[^>]*'
    let g:neocomplete#sources#omni#input_patterns.css='^\s\+\w+\|\w+[):;]?\s\+\|[@!]'
    let g:neocomplete#sources#omni#input_patterns.less='^\s\+\w+\|\w+[):;]?\s\+\|[@!]'
    let g:neocomplete#sources#omni#input_patterns.javascript='[^. \t]\.\%(\h\w*\)\?'
    let g:neocomplete#sources#omni#input_patterns.json='[^. \t]\.\%(\h\w*\)\?'
    let g:neocomplete#sources#omni#input_patterns.python='[^. *\t]\.\h\w*\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.ruby='[^. *\t]\.\w*\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.php='[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
    let g:neocomplete#sources#omni#input_patterns.python3='[^. *\t]\.\h\w*\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.go='\h\w*\%.'
    let g:neocomplete#sources#omni#input_patterns.perl='\h\w*->\h\w*\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.java='\%(\h\w*\|)\)\.'

  else
    " ultisnips
    let g:UltiSnipsExpandTrigger = "<Tab>"
    let g:UltiSnipsJumpForwardTrigger = "<Tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"
    let g:UltiSnipsListSnippets="<C-Tab>"
    " YouCompleteMe
    let g:ycm_register_as_syntastic_checker = 1
    let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
    let g:ycm_add_preview_to_completeopt = 0
    let g:ycm_show_diagnostics_ui = 0
    let g:ycm_server_log_level = 'info'
    let g:ycm_min_num_identifier_candidate_chars = 2
    let g:ycm_collect_identifiers_from_comments_and_strings = 1
    let g:ycm_complete_in_strings=1
    let g:ycm_key_invoke_completion = '<c-z>'
    set completeopt=menu,menuone
    let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
    let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }
    if GUI()
      let g:ycm_key_invoke_completion = '<C-Space>'
    else
      let g:ycm_key_invoke_completion = '<C-@>'
    endif

  endif

  " For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

let g:syntastic_python_checkers = ['pylint']
