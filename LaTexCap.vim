function! s:latexcap(filename)
  " Get the path of the plugin directory
  let plugin_dir = $VIMRUNTIME . '/plugin/latexcap'
  
  " Create the plugin-specific directory if it doesn't already exist
  if !isdirectory(plugin_dir)
    call mkdir(plugin_dir, 'p')
  endif
  
  " Set the path for the screenshot file
  let screenshot_path = plugin_dir . '/' . a:filename
  
  " Take the screenshot using scrot
  let command = 'scrot -s ' . screenshot_path
  call system(command)
  
  " Convert the screenshot to LaTeX using pix2tex
  let py_command = 'pix2tex ' . screenshot_path
  let latex_code = trim(system(py_command))
  
  " Insert the LaTeX code into the current buffer
  call append(line('.'), latex_code)
endfunction

" Defining command
command! -nargs=1 LatexCap :call s:latexcap(<q-args>)
