## This is lab_example, created live for summer learning 2022 Jul 14 (Thu)

current: target
-include target.mk
Ignore = target.mk

vim_session:
	bash -cl "vmt"

######################################################################

first.Rout: first.R
	$(pipeR)

## Check i/o via shellpipes
second.Rout: second.R first.rda
	$(pipeR)

## make a quadratic picture using the value of x from first.R
plots.Rout: plots.R first.rda
	$(pipeR)

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff

Makefile: makestuff/00.stamp
makestuff/%.stamp:
	- $(RM) makestuff/*.stamp
	(cd makestuff && $(MAKE) pull) || git clone $(msrepo)/makestuff
	touch $@

######################################################################

-include makestuff/os.mk
-include makestuff/pipeR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
