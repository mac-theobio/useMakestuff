
Just starting to describe how to use [git.mk](https://github.com/dushoff/makestuff/blob/master/git.mk). The rules are all there if you're a make hound ☺

Things to make:

`sync` is the workhorse rule. sync is a fake target (the file is never made), because when we say we want to sync, we always want to at least try to pull. make sync will:
* update the file “commit.time” (see below)
* pull from the origin
* try to push

`commit.time` depends on anything tagged as a source in the make rules. The rule will
* update files in 'Ignore' 
* add 'Sources' and 'trackedTargets' for committing
* use git's dry-run to make an informative file (the target)
* [try to open this file in an editor for you](msedit.md) to examine and use as the basis for a commit message (!)
* try to commit using the edited commit message

`forcesync` is a less-efficient, more effective version of `sync`. It should work even when make thinks `commit.time` is up-to-date (typically because you changed your make files, a concept that make does not understand).

`all.time` is what you make when you want to go home; it will sync things that have changed in the current directory and then (recursively) make all.time in any directories listed in $(alldirs). JD syncs everything he works on in a given day with a single `make all.time` from a top directory.

## Getting started

* Fork or otherwise copy [the newMakestuff repo](https://github.com/dushoff/newMakestuff.git)

* Edit the Makefile; maybe just change the first (comment) line to describe what you think this repo might do.

* type `make sync`; since Makefile is listed as a source (by default), it should add the Makefile and try to help you edit a commit message
