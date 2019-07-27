# branches
## Target
current: target
-include target.mk

## Makestuff setup
Sources += Makefile README.md
msrepo = https://github.com/dushoff
ms = makestuff
-include $(ms)/os.mk
-include $(ms)/perl.def

Ignore += $(ms)
Makefile: $(ms)/Makefile
$(ms)/Makefile:
	git clone $(msrepo)/$(ms)
	ls $@

######################################################################

Sources += names.step names.pl
Ignore += names.mk 
names.mk: names.step names.pl
	$(PUSH)

include names.mk

Ignore += clones
makes clones:
	$(mkdir)

Ignore += $(branches)

Sources += $(wildcard makes/*.mk)

## Track branch directories if they've been made
fl = $(wildcard *)
active = $(filter $(fl), $(branches))
alldirs = makestuff $(active)

######################################################################

# epidemicInsurance.setup:

%.setup: % %/Makefile ;
.PRECIOUS: %/Makefile
%/Makefile: makes/%.mk
	cd $* && $(LNF) $(CURDIR)/$< Makefile

Sources += branch.mk
.PRECIOUS: makes/%.mk
makes/%.mk:
	$(MAKE) makes
	$(CP) branch.mk $@

######################################################################

### Makestuff rules

-include $(ms)/git.mk
-include $(ms)/visual.mk

