# branches
## Target
current: target
-include target.mk

## Makestuff setup
Sources += Makefile 
msrepo = https://github.com/dushoff
ms = makestuff
include names.mk
-include $(ms)/os.mk
-include $(ms)/perl.def

Ignore += $(ms)
Makefile: $(ms)/Makefile
$(ms)/Makefile:
	git clone $(msrepo)/$(ms)
	ls $@

######################################################################

Ignore += clones
clones:
	$(mkdir)

Sources += names.step names.pl
Ignore += names.mk 
names.mk: names.step names.pl
	$(PUSH)

Ignore += $(branches)

######################################################################

### Makestuff rules

-include $(ms)/git.mk
-include $(ms)/visual.mk

