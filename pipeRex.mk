Sources += $(wildcard *.R)

## when autopipeR is set, make thinks it can make <x.Rout> from <x.R> using the recipe $(pipeR); we can also add that recipe manually.
autopipeR=defined

## Commented-out dependency lines are for editor navigation; they don't have any effect in make
# base.Rout: base.R

## calc.R needs to have a value of x defined in an upstream script
## pipeR.mk knows that .rda is made as a side effect of .Rout
calc.Rout: calc.R base.rda

## If you start from a fresh clone, `make calc.Rout` should:
#### run base.R to make base.Rout (and base.rda as a side effect);
#### then run calc.R, passing the name of the dependency for shellpipes to use.

## To make a plot from a pipeR script, you should just need to plot
## output will be automatically put into .Rout.pdf
## it's good to add startGraphics() after you call shellpipes, but simple projects always work even without that

plot.Rout: plot.R base.rda


