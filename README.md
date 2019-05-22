Clone other people's directories and silently add makestuff to them.

Information about the repos is kept in names.step, which is used to make names.mk

Make a new directory by using <dirname>.setup

To deal with subdirs, we first clone things into "clones" (where we're not meant to look) and then link to their names. If we are using two subdirs from the same repo, these should generally be based on different clones

In theory, we can deal with branches by either:
* keeping the Makefile simple, and letting the branches share inside one directory (use checkout)
* making a separate subdir for each branch, as above, with different entries in names
Automatic testing will need new rules, because the branch directory isn't even _supposed_ to know about its Makefile; that's controlled from here

