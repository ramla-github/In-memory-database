#!/bin/perl
print "Enter a name for new sorted  file\n";
$newname = <STDIN>;
$new = chomp($newname);
open(DATA,'<',$ARGV[0]);
open(my $fh,">","file");
print $fh  sort <DATA>;
close(DATA);
close($fh);
rename("file",$newname);
exit();

