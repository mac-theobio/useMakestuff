
## A simple rule

## A rule has a dependency line and zero or more recipe lines
make_intro.md.words: make_intro.md

## Multiple dependency lines are just combined; you can only have one recipe block

## This is something you might turn on and off if I'm trying to get a rule right
## make_intro.md.words: make_intro.mk

## Automatic variables

######################################################################

## Implicit rules


