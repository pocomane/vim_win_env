
Description
-----------

These are some configuration files to setup a windows vim+busybox portable
environment. You need to get the distribution files from Gvim for windows, and
some other executables from MSYS2 project: the process is described in the
"Setup" section.

If you feel ok in runnig binary form unknown source, you can skip the setup
and just download the [binary package](http://pocomane.com/asset/vim_win_env.7z).

Finally, I included also a selection of vim plugins that I think are usefull
(you can easly delete them, if you want, see the Vimfiles section)

Installation tips
-----------------

In the following, all the relative path are expressed with respect to the 
folder containing this file. For example, the primary vimrc file is 'vim/vimrc'.

There should be no conflict while coping other files in this folder, but if got
one of them, be sure to keep the version of this repository.

Install gvim
------------

Copy all the gvim binaries in "vim" subfolder. We used the runtime-free [vim
distribution with gui](ftp://ftp.vim.org/pub/vim/pc/gvim80-069.zip). The
content of the directory will be:

vim/README_bindos.txt
vim/gvim.exe
vim/gvimext.dll
vim/install.exe
vim/tee.exe
vim/uninstal.exe
vim/uninstal.txt
vim/vimrun.exe
vim/xxd.exe

Then extract and copy the [runtime
distribution](ftp://ftp.vim.org/pub/vim/pc/vim80-069rt.zip) in the "vimrt"
subbolder. So for example you get the file "vimrt/vimrc_example.vim".

Install busybox
---------------

If you have a MSYS2 installation somewhere, you just need to copy the following
file in the relative little_unix_for_windows folder. Otherwise you need to find
them separately on the web.

- usr/bin/mkpasswd.exe
- usr/bin/cygwin-console-helper.exe
- usr/bin/msys-2.0.dll
- usr/bin/mintty.exe
- usr/bin/mkgroup.exe
- usr/bin/busybox.exe

If you want more information about the configuration of busybox/mintty, you can
visit the repository at
[little_unix_for_windows](https://github.com/pocomane/little_unix_for_windows/).
This is basically a mirror of that repository with minimal changes.

Install ctags
-------------

This is not mandatory, but useful if you work on big code base.

Copy the [ctags
distribution](https://sourceforge.net/projects/ctags/files/ctags/5.8/ctags58.zip/download)
files for windows in the ctags subfolder (i.e. there will be the file
ctags/ctags.exe).

Configure vimfiles
------------------

In the "vimfiles" subfolder there are some usefull plugin. If you want you can
remove them: just delete all the content of the vimfiles/bundle directory to
get a plain vim installation. Indeed a plugin will remain installed: Tim Pop's
pathogen in the vimfiles/pathogen directory. I suggest you to keep it since it
is a very common plugin manager (a tool that will help you to install easly any
other plugin).

Note that, also if you decide do not use any plugin, you still should keep the
"vimfiles" directory and the contained vimrc file. These directory and file are
the entrypoint of your personal configuration. In other words I suggest you to
modify the "vimfiles/vimrc" file instead of the one in the "vim" or "vimrt"
subfolder.

Please note that, if you decide to keep the plugins, there is a binary one.
However the source code is included so if you want you can recompile it with
(if you have a gnu toolchain installed):

> cd vimfiles/bundle/vimproc.vim
> make clean
> rm -f autoload/*.so
> rm -f autoload/*.dll
> make

Usage
-----

Note that the result is now fully portable. You can rename it, move it on a usb
drive, and so on and it will continue to work. The only issues can be about the
little_unix_for_windows dierctory. Refers to [that sub
repository](https://github.com/pocomane/little_unix_for_windows/) if you have
some trouble.

If you want to start a vim, just double click on the gvim.bat. You can also run
a mintty/busysbox terminal by clicking on termina.bat. Thanks to busybox, from
within gvim you can use typical unix comamnd with the "!" sintax. E.g. ":r !ls"
will past the content of the corrent directory. You can also start a shell with
a utility script: ":!term.sh".

Gvim is configured to save all its cache information (command history, register
contents, per file persistent undo, etc) into the vimfiles/vimcache folder. You
can delete all this information simply removing the folder.

Conclusion
----------

Fuck you Eclipse! (oh, well, probably you still need to setup a c/c++ compiler
and similar things, but you got the sense...)

