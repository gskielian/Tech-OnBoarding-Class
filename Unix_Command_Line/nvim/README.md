# Opinionated nvim Setup

NVIM can be scripted in python, big plus.

Also IMHO setup with UltiSnips was much more straightforward.


## Prereqs and Setup Recipe:

Things to setup separately (will have docs in subfolders later for additional setup instructions)

1. [vim-plug](https://github.com/junegunn/vim-plug) - plugin manager, install this first
2. [my-init.vim](my-init.vim) - starter point (mainly the template from junegunn) for initialization (vimrc for nvim)
3. `:PlugInstall` -- use this command to initialize the installation of init files
4. `mkdir -p ~/.config/nvim/UltiSnips/all` - this creates a location for you to place generic snippets (note, directory needs to be named `all`)
5. add `let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips/', 'UltiSnips']` to your `~/.config/nvim/init.vim` you can skip this step if you copy pasta'd my init.vim sample : )


## get started snippeting

Create a `test.snippets` file in your all directory (will apply to all files)

`nvim ~/.config/nvim/UltiSnips/all/test.snippets`

add the following (hint: you can `usnip` then press `tab` to generate the snippets template)

```
snippet justa "optional (recommended) description"

test of ${1:the_system} for some ${2:stuff}
$0

endsnippet

```


Press `cntl-j` to move to the next number (starting with `$1`)

Save, open a new window with nvim and try it out : )


## File Type Specific

if you want to make your new plugin work only for say python, then create a new directory called `python` in your `UltiSnips` folder:

1. `mkdir -p ~/.config/nvim/UltiSnips/python` - this creates a location for you to place python snippets (note, directory needs to be named `python`)

Any snippets you create in this folder will only apply to files with python extensions. Same technique for "c" "javascript" or other languages : )


## git commits

To make nvim your default editor for git commits just use the following: 

`git config --global core.editor nvim`


## vim init descriptions

- `detailed-init.vim` - has fzf, nerdtree, and tagbar toggle
- `modern-init.vim` - without above, but with go bindings
- `my-init.vim` - even more barebones
- `my-rpi-init.vim` - raspi targeted
## How to setup Code Completion


[Code Completion Guide](https://octetz.com/docs/2019/2019-04-24-vim-as-a-go-ide/)



