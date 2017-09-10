
Installation
============

You must add the whole directory to the vim runtimes and then load the vimrc file. In linux you can do this simply by putting

```
set runtimepath=~/vim
so ~/vim/vimrc
```

into your ~/.vimrc . For windows it tepends on how your vim distribution is installed.

Re-compile binary modules
=========================

Actualy only luaproc ha binary code.

```
BASEDIR="$PWD"

cd "$PWD"/bundle/vimproc.vim
make clean
rm -f autoload/*.so
rm -f autoload/*.dll
make
```

TODO
====

Trovare/testare plugin vim per:

- IntelliSense
  YouCompleteMe ha una parte compilata
  NeoComplete sembra essere un assemblatore senza engine sottostanti (comunque sembra meglio della finestra originale di vim ctrl-p)

- Mostra documentazione mentre scrivi
  ???

- Snippet
  UltiSnip
  SnipMate

