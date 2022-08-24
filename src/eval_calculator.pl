#!/usr/bin/perl
use strict;
use warnings;

sub main {
    print("Enter your equation below.\n");
    while (defined(my $x = <>)) {                       # Read a line into $x
        my $result = eval $x;                           # Evaluate the line
        if ($@) {                                       # Check for compile or runtime errors
            print "Invalid input: $x"; 
            print "Please enter something else.\n"; 
        } else { 
            print $result, "\n"; 
        } 
    }
}

main() 