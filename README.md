EVERYTHING IS A MESS; DIDN'T TEST WHEN NAMES DIDN'T MATCH AND NOW IT MAKES DUMB ASSUMPTIONS

SHOULD BE ON A TECHNICAL DEBT LIST WHEN I HAVE ONE

DON'T FIX AT MMED 2019 (or at least not until the virus is done).

* makestuff uplinks also don't work because linux is weird about where it _is_ with symlink directories.

** bellan_mcmc in particular is a mess. Burn. it. down. But save the makes/ Makefile.

The bellan Makefile also has the symlink problem



Clone other people's directories and silently add makestuff to them.

Each directory has a repo, repo subdirectory, name: this is controlled through names.step

To deal with subdirs, we first clone things into "clones" (where we're not meant to look) and then link to their names. If we are using two subdirs from the same repo, these should generally be based on different clones
