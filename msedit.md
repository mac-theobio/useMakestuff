
makestuff will often figure out how to open an editor on your commit.time file.

This may have any of the following problems:

* it may just not work
* the editor may not communicate well with the make shell (so that make either doesn't wait for the editor, or waits forever for the editor)
* you may hate the editor that makestuff "chooses"

The answer to these problems would be to set MSEDITOR as a variable for your Makefile. It's bad form to do this in one of the project Makefiles, because that would change MSEDITOR for collaborators. You can instead:

* set it in the shell
* explicitly export it when calling make
* put it in a [personal make file](personal.md)
