
## pipeR

The [pipeR make file](https://github.com/dushoff/makestuff/blob/master/pipeR.mk) has rules for making and using products from R scripts. It is intended to work with [the shellpipes package](https://dushoff.github.io/shellpipes/), which provides R commands to use information passed by the make rules, and to save things the way that the make rules expect.

## Getting started

* [Make a repo with makestuff](README.md)
* Uncomment the pipeR "include" directive at the bottom
* define $(autopipeR) by typing a line which reads `autopipeR=defined` near the top of your Makefile
* edit the R script "<scriptname.R>"
* type `make <scriptname>.Rout`

make should now understand to run the script and put the output into the "target" (the .Rout file).
* if you make the target again, make will rerun the script if it has changed, but not if it hasn't
* the "error" stream from R goes by default to the screen, and not to the target
* if the script does not complete successfully, the output can be found instead in <scriptname.rtmp>

## Making a pipeline

To make a pipeline we want to use shellpipes (by saying `library(shellpipes)` near the top of our R script. We then want to use a shellpipes save command (e.g., saveEnvironment()).

A downstream script can then use the output of our script. We tell make about this dependency with a dependency rule, and make then passes the dependency information to the downstream script, so that it can load information with a shellpipes loading command (e.g., loadEnvironments())

A simple example is shown in [pipeRex.mk](pipeRex.mk)
