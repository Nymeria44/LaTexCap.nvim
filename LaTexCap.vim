function! s:latexcap(filename)
  let command = 'scrot -s ' . a:filename
  call system(command)
  
  " Convert the screenshot to LaTeX using the pix2tex Python script
  let py_command = 'pix2tex ' . a:filename
  let latex_code = trim(system(py_command))
  
  " Insert the LaTeX code into the current buffer
  call append(line('.'), latex_code)
endfunction

