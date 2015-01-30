set mouse=a

" Editing preferences
set virtualedit=onemore     " Allow for cursor beyond last character

" Presentation preferences
set wrap                    " Wrap lines

" Buffers/files
set hidden                  " Allow buffer switching without saving
set backup                  " Backups are nice ...
set undofile                " So is persistent undo ...
set undolevels=1000         " Maximum number of changes that can be undone
set undoreload=10000        " Maximum number lines to save for undo on a buffer reload

" Extra indicators
set title                   " Change the xterm title
set number                  " Line numbers on
set hlsearch                " Highlight search terms

" C-X to swap visual with yanked.
:vnoremap <C-X> <Esc>`.``gvP``P

" Keep housekeeping files out of the pwd
function! InitializeDirectories()
  let dir_list = {
  \  'backup': 'backupdir',
  \  'views': 'viewdir',
  \  'swap': 'directory',
  \  'undo': 'undodir'
  \}

  for [dirname, settingname] in items(dir_list)
    let directory = $HOME . '/.nvim/' . dirname . '/'
    if exists("*mkdir")
      if !isdirectory(directory)
        call mkdir(directory)
      endif
    endif
    if !isdirectory(directory)
      echo "Warning: Unable to create backup directory: " . directory
      echo "Try: mkdir -p " . directory
    else
      let directory = substitute(directory, " ", "\\\\ ", "g")
      exec "set " . settingname . "=" . directory
    endif
  endfor
endfunction
call InitializeDirectories()
