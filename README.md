## Getting started

* Fork or otherwise copy [the newMakestuff repo](https://github.com/dushoff/newMakestuff.git)
* Clone your new repo and type `make Makefile`. It should automatically clone makestuff, and add a "stamp" file indicating that it has done so.

## Doing things

You can control makestuff by adding -include rules to the bottom of your Makefile. There are some that come enabled by default. [os.mk](https://github.com/dushoff/makestuff/blob/master/os.mk) should always be enabled, since other .mk files will assume that it is.

makestuff is a bit of a mess and should probably be refactored. [JD](https://mac-theobio.github.io/dushoff.html) developed it for too long with a very small group, and it mixes things of general use with things that are very particular to the lab workflow.

[git](git.md): there are a _lot_ of rules in [git.mk](https://github.com/dushoff/makestuff/blob/master/git.mk), but using some of the simple ones can be fun.

## Using an existing makestuff repo

In general, you should be able to make the primary target in a makestuff project with the following commands:

* clone the repo and switch to the repo directory
* `make Makefile` -- this should clone makestuff
* `make pullall` -- this will clone repos that are listed as $(subdirs), and also clone (or link) versions of makestuff for these repos and other subdirectories
	* for very complicated projects you may need to `make pullall` more than once; twice should almost always be enough, you should also be able to tell when make pullall is bored (not cloning anything).

[XXX.mk](https://github.com/dushoff/makestuff/blob/master/XXX.mk)
