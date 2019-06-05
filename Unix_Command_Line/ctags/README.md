# CTAGS #

CTAGS are a feature which allow you to bring autocomplete and method searching features (ide-like features) into your cli editor.

## universal-ctags ##

one ctag implementation is as follows:

[Universal CTAGS](https://github.com/universal-ctags/ctags)

## Installation ##

### 1. Run following commands:

You can follow the steps below to install ctags via universal-ctags:

```sh
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh 
./configure
make
sudo make install
```

### 2. Add line to .vimrc or equivalent ###


in your `.vimrc` or `~/.config/nvim/init.vim` file include the following line, which makes it so it tracks the project root folder's tag file

`set tags=./tags,tags;`

## Using CTAGS ##


### 1. Initialize CTAGS in your Repo Root Dir ###

Use the following command at the root dir of a project to add ctag funtionality:

`ctags -R .` 

### 2. Add tags to .gitignore

Add `tags` to your projects' `.gitignore` so that these aren't tracked by git.
