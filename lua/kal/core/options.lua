local opt = vim.opt
--tabs & indentation

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- considering string-string as a word
opt.iskeyword:append("-")
vim.cmd([[
" Set C++ file type
autocmd BufNewFile,BufRead *.cpp set filetype=cpp
 
" Compile and run C++ program in subshell
function! CompileAndRun()
  let fileName = expand('%')
  if fileName =~ '\.cpp$'
    let exeName = substitute(fileName, '\.cpp$', '', '')
    execute 'w | !g++ -std=c++11 -Wall -Wextra -Wpedantic -O2 -o ' . exeName . ' ' . fileName
    if v:shell_error == 0
      let cmd = "x-terminal-emulator -e bash -c './" . exeName . "; read -p \"Press enter to exit...\"'"
      call system(cmd)
      redraw!
    endif
  else
    echo 'Not a C++ file'
  endif
endfunction
 
" Map keys to compile and run current file
map <F5> :call CompileAndRun()<CR>
map <F9> :w<CR>:!clear<CR>:call CompileAndRun()<CR>
]])
