
Just starting to describe how to use [git.mk](https://github.com/dushoff/makestuff/blob/master/git.mk). The rules are all there if you're a make hound ☺

`make sync` is the workhorse rule. sync is a fake target (the file is never made), because when we say we want to sync, we always want to at least try to pull. make sync will:
* call a commit rule (commit.time) if make thinks it necessary
* pull from the origin
* try to push

`commit.time` depends on anything tagged as a source in the make rules. The rule will
* update files in $(Ignore) 
* add $(Sources) and $(trackedTargets) for committing
* use git's dry-run to make an informative file (the target)
* [try to open this file in an editor for you](msedit.md) to examine and use as the basis for a commit message (!)
* try to commit using the edited commit message
