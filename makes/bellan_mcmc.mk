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
$(ms)/Makefile: dir = ~/gitroot/branches/makestuff/
$(ms)/Makefile: 
	ls $(dir) Makefile && /bin/ln -s $(dir)

######################################################################

## Branch content

Sources += $(wildcard *.R)

jdMovs.Rout: jdMovs.R

uniform.Rout: BinomMCMC.Rout SI_HIV_mod.Rout uniform.R

something: SI_HIV_mod.R BinomMCMC.R utilityFxns.R

######################################################################

### Makestuff rules

-include $(ms)/wrapR.mk
-include $(ms)/git.mk
-include $(ms)/visual.mk

