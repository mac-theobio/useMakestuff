## Getting started

* Fork or otherwise copy [the newMakestuff repo](https://github.com/dushoff/newMakestuff.git)
* Clone your new repo and type `make Makefile`. It should automatically clone makestuff, and add a "stamp" file indicating that it has done so.

## Doing things

You can control makestuff by adding -include rules to the bottom of your Makefile. There are some that come enabled by default. [os.mk](https://github.com/dushoff/makestuff/blob/master/os.mk) should always be enabled, since other .mk files will assume that it is.

makestuff is a bit of a mess and should probably be refactored. [JD](https://mac-theobio.github.io/dushoff.html) developed it for too long with a very small group, and it mixes things of general use with things that are very particular to the lab workflow.

[git](git.md): there are a _lot_ of rules in [git.mk](https://github.com/dushoff/makestuff/blob/master/git.mk), but using some of the simple ones can be fun.

[XXX.mk](https://github.com/dushoff/makestuff/blob/master/XXX.mk)
