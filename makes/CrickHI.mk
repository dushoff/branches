# branches
## Target
current: target
-include target.mk

## Makestuff setup
msrepo = https://github.com/dushoff
ms = makestuff
-include $(ms)/os.mk
## -include $(ms)/perl.def

Ignore += $(ms) Makefile
Makefile: $(ms)/Makefile
	touch $@

$(ms)/Makefile: dir = ~/gitroot/branches/makestuff/
$(ms)/Makefile: 
	ls $(dir) Makefile && /bin/ln -s $(dir)

######################################################################

## Branch content

Sources += $(wildcard src/*.R)
Sources += $(wildcard explore/*.R)

## Genetic data from dropbox
genDrop: dir = ~/Dropbox/epitopic-dist-flu
genDrop:
	$(linkdirname)

## Now use wrapR in explore
alldirs += explore

######################################################################

### Makestuff rules

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/stepR.mk

