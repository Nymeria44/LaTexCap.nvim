" LaTexCap.vim - A plugin for taking screenshots and then converting them into LaTeX Code

if exists('g:LaTexCap')
  finish
endif
let g:LaTexCap = 1

let s:lua_init_loc = fnamemodify(resolve(expand('<sfile>:p:h') . '/../lua/LaTexCap/init.lua'), ':p')
exe "lua require('LaTexCap')"


command! -nargs=0 LatexCap lua require("LaTexCap").Capture2Tex()
