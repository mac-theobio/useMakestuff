
Just starting to describe how to use [git.mk](https://github.com/dushoff/makestuff/blob/master/git.mk). The rules are all there if you're a make hound ☺

`make sync` is the workhorse rule. sync is a fake target (the file is never made), because when we say we want to sync, we always want to at least try to pull. make sync will:
* call a commit rule (commit.time) if make thinks it necessary
* 
