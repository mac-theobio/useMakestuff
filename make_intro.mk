
## A rule is a dependency line followed optionally by a recipe block

## Explicit rules have explicitly named targets
make_intro.md.words: make_intro.md
	wc < make_intro.md > make_intro.md.words 

## Automatic variables allow us to be less repetitive
## $< is the first dependency related to a recipe
## $@ is the make target

## This is a synonym for the rule above, but more modular or something
README.md.words: README.md
	wc < $< > $@

## You can uncomment this if you are actively working on a rule
## README.md.words: make_intro.mk

## An implicit version of this rule
## implicit rules may not "chain" as easily 
## explicit rules always override implicit rules

## One more automatic variable is $*, which corresponds in recipe to the % in dependency
Ignore += $(wildcard *.md.words *.wc)
%.md.words: %.md
	@echo $* is my md file
	wc < $< > $@

## An example of using a variable in a recipe (not linked up yet)
px.out: px.in px.pl
	$(PUSH)

