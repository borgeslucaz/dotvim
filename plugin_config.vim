" ====================
" Plugin Configuration
" ====================

" Lightline {

    set laststatus=2

    let g:lightline = {
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'virtualenv', 'filename', 'fugitive' ] ]
        \ },
        \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
        \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
        \ 'component': {
        \   'fugitive': '%{exists("*fugitive#head")&&strlen(fugitive#head())?'.
        \               '"\ue0a0 ".fugitive#head():""}',
        \   'virtualenv': '%{strlen(virtualenv#statusline())?virtualenv#statusline():"(No Env)"}'
        \ },
        \ 'component_visible_condition': {
        \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())',
        \ },
        \ }

" }

" NerdTree {

    map <C-e> :NERDTreeTabsToggle<CR>

    let NERDTreeShowBookmarks = 1
    let NERDTreeIgnore = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
    let NERDTreeChDirMode = 0
    let NERDTreeQuitOnOpen = 1
    let NERDTreeMouseMode = 2
    let NERDTreeShowHidden = 1
    let NERDTreeKeepTreeInNewTab = 1
    let g:nerdtree_tabs_open_on_gui_startup = 0

" }

" YouCompleteMe {

    nnoremap <silent> <C-]> :YcmCompleter GoTo<CR>
    let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_key_list_select_completion = ['<TAB>']
    let g:ycm_key_list_previous_completion = ['<S-TAB>']
    let g:ycm_goto_buffer_command = 'horizontal-split'
    let g:ycm_python_binary_path = 'python'

" }

" Ultisnips {

    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger = "<C-o>"
    let g:UltiSnipsJumpForwardTrigger = "<C-b>"
    let g:UltiSnipsJumpBackwardTrigger = "<C-z>"

" }

" Rainbow {

    au FileType c,cpp,objc,objcpp,python call rainbow#load()

    let g:rainbow_guifgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
    let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" }

" TagBar {

    nmap <C-t> :TagbarToggle<CR>

" }

" Vim Isort {

    let g:vim_isort_map = '<C-i>'

" }

" Elm-vim {

    let g:elm_format_autosave = 1
    let g:elm_setup_keybindings = 0

" }

" typescript-vim {

    let g:typescript_compiler_binary = 'tsc'
    let g:typescript_compiler_options = ''
    autocmd QuickFixCmdPost [^l]* nested cwindow
    autocmd QuickFixCmdPost    l* nested lwindow

" }

" vim-js-pretty-template {

    autocmd FileType typescript JsPreTmpl html
    autocmd FileType typescript syn clear foldBraces

" }

" auto-pairs {

    let g:AutoPairsFlyMode = 1
    let g:AutoPairsShortcutBackInsert = '<C-b>'
    let g:AutoPairsShortcutFastWrap = '<C-w>'
    let g:AutoPairsShortcutToggle = '<C-p>'
    let g:AutoPairsShortcutJump = ''

" }

" vim-polyglot {

    " markdown
    let g:vim_markdown_conceal = 0

" }
