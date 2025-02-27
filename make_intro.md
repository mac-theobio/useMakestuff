
## Intro

make is a workflow tool based on the command line. It will go smoother if you have some familiarity with shells and command lines.

We have some notes from a [theobio summer learning program](https://hackmd.io/cxyevU-nRey03BxOoWUJ7g?view). They include links to a shell intro (and other stuff about make as well).

## Principles

`make` is designed to update _target_ files (made by the computer) based on _source_ files (provided to the project by the user).
* Your graph depends on your input files and your graphics code
* Your data file is downloaded daily from the web
* Your fitting file depends on the data file and your fitting algorithm and on your parameter file
* Your MS depends on your graph and your markdown text

The idea is to do exactly the necessary work to provide updated target files when you ask for them.

make uses _dependencies_ provided by you to decide what needs to be done

make uses _recipes_ provided by you to try to do it
* these are shell commands, by default in a fairly weird shell `/bin/sh`
* make variables can be expanded inside these commands

a "rule" is a set of dependencies (usually) associated (somehow) with a recipe

## Pros and cons (workflow tools in general)

Enhance replicability
* Do things with commands that can be recorded and repeated exactly

Good for self-documenting at the project level

Modularity
* you can build things that work, and then build on top of them
* do tasks on chunks and let the tool co-ordinate for you

## Pros and cons (make-specific)

Highly stable, widely used
* We have a lot of lab support (esp. JD)

Ancient and awkward

## Other tools

## make doesn't care

make believes the dependencies and recipes you tell it
* your input file is not a dependency unless you say so
* your output won't go to the right output file unless you send it there

passing information from make
* automatic variables
* implicit rules

passing information to make
* parsing input files
* can get very deep

## make has fragile syntax

* dependency lines must have a colon
* recipe lines must start with a tab
	* spaces _won't_ work
	* nothing else should start with a tab, even comments

## make is not self-aware

make is pretty good at figuring out what needs to be done _based on reading the make files_. If you are developing your make rules at the same time as your project (as you should), you will occasionally need to hack make

We can make make make by:
* `touch`ing input files
* deleting output files
* adding fake dependencies (often the makefile itself)
	* remember to delete these eventually or else make will do extra work later

## Generic rules

if there are things you do often you can code how you do them to use across multiple projects
* this is the idea behind makestuff

* make has a lot of “built-in” rules; they are usually old-fashioned
* you can make generic implicit rules
* you can put generic recipes in variables 

## Automatic variables

Short, cryptic and useful:
* $^: all of the dependencies (not just the ones from this rule ¶)
* $<: the first dependency make finds (generally _does_ choose from the same ¶ as the recipe)
* $@: the target name
* $*: the stem matched by % in the dependency line
* [Many others](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html)
