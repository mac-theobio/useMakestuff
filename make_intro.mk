
## A simple rule

## A rule is a dependency line followed optionally by a recipe block

make_intro.md.words: make_intro.md
	wc < make_intro.md > make_intro.md.words 

## Multiple dependency lines are just combined; you can only have one recipe block for a given target

######################################################################

## Automatic variables allow us to be less repetitive
## $< is the first dependency related to a recipe
## $@ is the make target

## This is a synonym for the rule above, but more modular or something
README.md.words: README.md
	wc < $< > $@

## You can use something like this if you are actively working on a rule
## README.md.words: make_intro.mk

######################################################################

## Implicit rules
## Explicit rules have explicitly named targets like README.md.words above

## An implicit version of this rule
## implicit rules may not "chain" as easily 
## explicit rules always override implicit rules
Ignore += $(wildcard *.md.words *.wc)
%.md.words: %.md
	@echo $* is my md file
	wc < $< > $@
## Note the new automatic variable $*, which corresponds in recipe to the % in dependency

######################################################################

## Variables

## An example of using a variable in a recipe (not linked up yet)
px.out: px.in px.pl
	$(PUSH)

