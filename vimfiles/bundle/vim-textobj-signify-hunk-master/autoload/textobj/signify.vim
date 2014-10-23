" textobj-signify-hunk: text object for selecting signify hunks
" Author: Denis Spiro
" Version: 0.1.1

function! textobj#signify#select_i()
  let path = expand('%:p')
  if !exists('g:sy') || !has_key(g:sy, path) || !g:sy[path].active
    return 0
  endif

  if !s:line_has_sign()
      return 0
  endif
  let hunks = g:sy[path].hunks
  let curr_line = line('.')
  for h in hunks
    let start_pos = h.start
    let end_pos = h.end
    if (curr_line >= start_pos && curr_line <= end_pos)
        execute 'normal! ' . (end_pos-1) . 'G$'
        let selection_end = getpos('.')
        return ['v', [0, start_pos, 1, 0], selection_end ]
    endif
  endfor
  return 0
endfunction

function! s:line_has_sign()
    redir => signs
    silent exe ":sign place file=" . expand("%:f")
    redir END
    return (signs =~ line('.') . ' .*=Signify.*')
endfunction
