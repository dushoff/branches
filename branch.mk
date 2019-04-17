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
$(ms)/Makefile:
	ls ../makestuff/Makefile && /bin/ln -s ../makestuff 

######################################################################

## Branch content

######################################################################

### Makestuff rules

-include $(ms)/git.mk
-include $(ms)/visual.mk

