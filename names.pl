use strict;
use 5.10.0;

while(<>){
	chomp;
	next if /^#/;
	my ($name, $h, $sub) = split;
	say "clones/$name: ; (\$(MAKE) clones && cd clones && git clone $h)";

	my $target = $name;
	$target .= "/$sub" if defined $sub;
	say "$name: clones/$name ; \$(LN) clones/$target \$@";
	say "branches += $name";
}

