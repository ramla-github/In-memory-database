#!/bin/perl
print "Enter a string to search for in the  file\n";
my $string = <STDIN>;
my  $count=0;
open(my $data,'<',$ARGV[0]);
while(<$data>){
$count++;
$equal = $_ eq $string;
if($equal == 1 ){
print "The string exists in the file and is on line $count\n";
exit();
}
}
print "String doesn't exist in the file\n";



exit();
