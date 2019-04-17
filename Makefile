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
makes clones:
	$(mkdir)

Sources += names.step names.pl
Ignore += names.mk 
names.mk: names.step names.pl
	$(PUSH)

Ignore += $(branches)

Sources += $(wildcard makes/*.mk)

fl = $(wildcard *)
active = $(filter $(fl), $(branches))
alldirs = makestuff $(active)

%/Makefile: makes/%.mk
	cd $* && $(LNF) $(CURDIR)/$< Makefile

Sources += branch.mk
makes/%.mk:
	$(MAKE) makes
	$(CP) branch.mk $@

######################################################################

### Makestuff rules

-include $(ms)/git.mk
-include $(ms)/visual.mk

