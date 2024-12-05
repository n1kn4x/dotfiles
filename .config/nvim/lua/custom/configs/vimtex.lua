vim.cmd([[
  filetype plugin indent on
  syntax enable
  let g:vimtex_view_method = 'zathura'
  let g:vimtex_compiler_latexmk = {
      \ 'aux_dir' : 'build/aux',
      \ 'out_dir' : 'build',
      \ 'callback' : 1,
      \ 'continuous' : 1,
      \ 'executable' : 'latexmk',
      \ 'hooks' : [],
      \ 'options' : [
      \   '-verbose',
      \   '-file-line-error',
      \   '-synctex=1',
      \   '-interaction=nonstopmode',
      \ ],
      \}
]])
vim.keymap.set('n', '<leader>tv', '<cmd>VimtexView<cr>')
vim.keymap.set('n', '<leader>tc', '<cmd>VimtexCompile<cr>')
