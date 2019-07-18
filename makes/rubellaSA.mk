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

code/masterScript.Rout: code/masterScript.R

######################################################################

### Makestuff rules

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/stepR.mk

