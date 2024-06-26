## useMakestuff project

current: target
-include target.mk
Ignore = target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources += Makefile README.md

Sources += $(wildcard *.md)

######################################################################

## make lesson

Sources += make_intro.md make_intro.mk
include make_intro.mk

alldirs += lab_examples

######################################################################

## shellpipes example

######################################################################

Sources += pipeRex.mk
include pipeRex.mk

######################################################################

### Makestuff

Ignore += makestuff
msrepo = https://github.com/dushoff

Makefile: makestuff/00.stamp
makestuff/%.stamp:
	- $(RM) makestuff/*.stamp
	(cd makestuff && $(MAKE) pull) || git clone $(msrepo)/makestuff
	touch $@

-include makestuff/os.mk

-include makestuff/pipeR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
