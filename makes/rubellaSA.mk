# branches
## Target
current: target
-include target.mk

## Makestuff setup
msrepo = https://github.com/dushoff
ms = makestuff
-include $(ms)/os.mk
## -include $(ms)/perl.def

<<<<<<< HEAD
## Tested? 2019 Jun 03 (Mon)
=======
Ignore += $(ms) Makefile
Makefile: $(ms)/Makefile
	touch $@

>>>>>>> 5df8884af30d0de552af5b785be4682cbd26f1f7
$(ms)/Makefile: dir = ~/gitroot/branches/makestuff/
$(ms)/Makefile: 
	ls $(dir) Makefile && /bin/ln -s $(dir)

######################################################################

## Branch content

<<<<<<< HEAD
Sources += $(wildcard *.R)

Script.Rout: Script.R
=======
code/masterScript.Rout: code/masterScript.R
>>>>>>> 5df8884af30d0de552af5b785be4682cbd26f1f7

######################################################################

### Makestuff rules

-include $(ms)/git.mk
-include $(ms)/visual.mk
<<<<<<< HEAD
-include $(ms)/wrapR.mk
=======
-include $(ms)/stepR.mk
>>>>>>> 5df8884af30d0de552af5b785be4682cbd26f1f7

