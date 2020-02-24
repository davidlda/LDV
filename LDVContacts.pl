#!/usr/bin/perl

use strict;
use warnings;

my ($records, $filename) = @ARGV;

if (not defined $records)  {$records  = 10}
if (not defined $filename) {$filename = '/Users/dlima/LDV/contacts.csv'}

 
# open destination file for writing
open(DES,'>',$filename) or die $!;
my $firstline = 'AccountID,LastName'."\n";

print DES $firstline;
 
my $i = 0; 
while($i < $records){
my $newline = '0016g00000A8pw2AAB,ajeter'.$i."\n";
print DES $newline;
$i++; 
}
 
close(DES);
 


