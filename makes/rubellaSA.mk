# branches
## Target
current: target
-include target.mk

## Makestuff setup
msrepo = https://github.com/dushoff
ms = makestuff
-include $(ms)/os.mk
## -include $(ms)/perl.def

## Tested? 2019 Jun 03 (Mon)
Ignore += $(ms) Makefile
Makefile: $(ms)/Makefile
	touch $@

$(ms)/Makefile: dir = ~/gitroot/branches/makestuff/
$(ms)/Makefile: 
	ls $(dir) Makefile && /bin/ln -s $(dir)

######################################################################

## Branch content

Sources += $(wildcard *.R)

Script.Rout: Script.R
code/masterScript.Rout: code/masterScript.R

######################################################################

### Makestuff rules

-include $(ms)/git.mk
-include $(ms)/visual.mk
## -include $(ms)/wrapR.mk
## -include $(ms)/stepR.mk

