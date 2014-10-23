" textobj-signify-hunk: text object for selecting signify hunks
" Author: Denis Spiro
" Version: 0.1.1

if exists('g:loaded_textobj_signify_hunk')
    finish
endif

call textobj#user#plugin('signify', {
      \ '-': {
      \     'select-i': 'ih', 'select-i-function': 'textobj#signify#select_i',
      \ },
    \})

let g:loaded_textobj_signify_hunk = 1
