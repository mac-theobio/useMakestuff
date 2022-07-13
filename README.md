## Getting started

* Fork or otherwise copy [the newMakestuff repo](https://github.com/dushoff/newMakestuff.git)
* Clone your new repo and type `make Makefile`. It should automatically clone makestuff, and add a "stamp" file indicating that it has done so.

## Doing things

You can control makestuff by adding "-include" statements to the bottom of your Makefile. There are some that come enabled by default. [os.mk](https://github.com/dushoff/makestuff/blob/master/os.mk) should always be enabled, since other .mk files will assume that it is.

makestuff is a bit of a mess and should probably be refactored. [JD](https://mac-theobio.github.io/dushoff.html) developed it for too long with a very small group, and it mixes things of general use with things that are very particular to the lab workflow.

* [git](git.md): there are a _lot_ of rules in [git.mk](https://github.com/dushoff/makestuff/blob/master/git.mk), but using some of the simple ones can be fun.
* [pipeR](pipeR.md): [pipeR.mk](https://github.com/dushoff/makestuff/blob/master/pipeR.mk) has rules for making and using products from R scripts via [the shellpipes package](https://dushoff.github.io/shellpipes/)

## Using an existing makestuff repo

In general, you should be able to make the primary target in a makestuff project with the following commands:

* clone the repo and switch to the repo directory
* `make Makefile` -- this should clone makestuff
* `make pullall` -- this will clone repos that are listed as $(subdirs), and also clone (or link) versions of makestuff for these repos and other subdirectories
	* for very complicated projects you may need to `make pullall` more than once; twice should almost always be enough, you should also be able to tell when make pullall is bored (not cloning anything).
* `make all` -- as far as I can tell, this is not implemented anywhere, but would be a good convention for the collection of final products (paper, supplementary material, etc.)
	* if `make all` is not implemented, you will need to identify and make the desired target: `make main.pdf` is an example from a randomly selected project

## Lab meeting [recorded here, password &?PE^8VD](https://mcmaster.zoom.us/rec/share/HX-pI_xXnIz0gD5emMY-MUqfcBQYLC1i2Sk_lrlm70s5t0vPeQHD_oWanGjWFOah.VMu6cbV7oambjL02) files

[make_intro](make_intro.md)
* [make file](make_intro.mk)
