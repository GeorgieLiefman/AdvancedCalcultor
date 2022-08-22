#!/usr/bin/perl
use strict;
use warnings;

sub main {
    print("Enter your equation below.\n");
    while (defined(my $x = <>)) {
        my $result = eval $x; 
        if ($@) {  
            print "Invalid input: $x"; 
            print "Please enter something else.\n"; 
        } else { 
            print $result, "\n"; 
        } 
    }
}

main() 