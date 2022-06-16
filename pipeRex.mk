Sources += $(wildcard *.R)

autopipeR=defined

## Commented-out dependency lines are for editor navigation; they don't have any effect in make
# base.Rout: base.R

## calc.R needs to have a value of x defined in an upstream script
calc.Rout: calc.R base.rda

