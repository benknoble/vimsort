if exists('g:loaded_vimsort')
  finish
endif
let g:loaded_vimsort = 1

let g:vimsort_maps = get(g:, 'vimsort_maps', {
      \ 'n': 'gs',
      \ 'v': 'gs',
      \ })

if !empty(g:vimsort_maps.n)
  execute printf(
        \ 'nnoremap %s :set operatorfunc=sort#operator<CR>g@',
        \ g:vimsort_maps.n)
endif

if !empty(g:vimsort_maps.v)
  execute printf(
        \ 'vnoremap %s :<C-u>call sort#operator(visualmode(), 1)<CR>',
        \ g:vimsort_maps.v)
endif
