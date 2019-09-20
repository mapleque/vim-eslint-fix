Vim EslintFix Plugin
====

This plugin provide a commend EslintFix to execute shell cmd `eslint --fix`.

Requirement
----

- Install [ESLint](https://eslint.org/) in global.
- Make sure the command `eslint --fix <this file>` can execute in shell.

Install with [Vundle](https://github.com/VundleVim/Vundle.vim)
----

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

```
:EslintFix
```

- Use alias

Add code to `.vimrc`:

```vim
" Usually you should use yoru self mapleader
let mapleader='.'

noremap <Leader>f :EslintFix<CR>
```

Then use `,f` instead of `:EslintFix`.

- Auto run on `:w`

Add code to `.vimrc`:

```vim
autocmd BufwritePost *.js EslintFix
```
