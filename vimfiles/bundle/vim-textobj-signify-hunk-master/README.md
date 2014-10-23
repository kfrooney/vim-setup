textobj-signify-hunk
====================

This vim plugin provides a git change-hunk text object. The following plugins are required for it to work:

  - vim-signify (https://github.com/mhinz/vim-signify)
  - textobject-user (https://github.com/kana/vim-textobj-user)

The signify plugin displays signs on lines that have been added/removed/modified.

This is a rewrite for vim-signify from the [original textobj-gitgutter](https://github.com/gilligan/textobj-gitgutter)

Usage
-----
The default mapping `ih`for an inner hunk. See the included documentation on how to change this to your own key mapping.

Installation
------------
Use bundler of choice, for example [Vundle](https://github.com/gmarik/vundle) or [NeoBundle](https://github.com/Shougo/neobundle.vim):

    Bundle 'killphi/vim-textobj-signify-hunk'
