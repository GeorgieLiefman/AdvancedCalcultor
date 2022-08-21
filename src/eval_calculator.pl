#!/usr/bin/perl
use strict;
use warnings;

while (defined(my $s = <>)) {
    my $result = eval $s; 
    if ($@) {  
        print "Invalid string:\n $s"; 
    } else { 
        print $result, "\n"; 
    } 
} 