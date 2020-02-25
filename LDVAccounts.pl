#!/usr/bin/perl

use strict;
use warnings;

#Arg 1: contact number, Arg 2: filname to be created
my ($records, $filename) = @ARGV;

if (not defined $records)  {$records  = 10}
if (not defined $filename) {$filename = '/Users/dlima/LDV/accounts.csv'}

 
# open destination file for writing
open(DES,'>',$filename) or die $!;
my $firstline = 'Name'."\n";

print DES $firstline;
 
my $i = 0; 
while($i < $records){
my $newline = 'account'.$i."\n";
print DES $newline;
$i++; 
}
 
close(DES);
 


