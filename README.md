Vim EslintFix Plugin
====

This plugin provide a command EslintFix to execute shell cmd `eslint --fix`.

Requirement
----

- Install [ESLint](https://eslint.org/) in global.
- Make sure the command `eslint --fix <this file>` working in shell.

Install
----

- [Vundle](https://github.com/VundleVim/Vundle.vim)

  Add code to `.vimrc`:

  ```vim
  Plugin 'mapleque/vim-eslint-fix'
  ```

  Execute command in vim:
  ```
  :PluginInstall
  ```

Usage
----

- Manual run

  Execute command in vim:
  ```
  :EslintFix
  ```

- Map key

  Add code to `.vimrc`:
  ```vim
  " Usually you should use yoru self mapleader
  let mapleader='.'

  noremap <Leader>f :EslintFix<CR>
  ```

  Then using `,f` instead of `:EslintFix`.

- Auto run on `:w`

  Add code to `.vimrc`:
  ```vim
  autocmd BufwritePost *.js EslintFix
  ```

