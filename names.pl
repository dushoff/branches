use strict;
use 5.10.0;

while(<>){
	chomp;
	my ($name, $h, $sub) = split;
	say "clones/$name: ; (\$(MAKE) clones && cd clones && git clone $h)";

	my $target = $name;
	$target .= "/$sub" if defined $sub;
	say "$name: clones/$name ; \$(LN) clones/$target \$@";
}
