#!/usr/bin/perl
use strict;
use warnings;
use feature 'say';

print("Please enter your equation below.\n");
while (<>) {                                                    # while we get input
    my ($main, @operator) = /\d+|[+\-*\/]+/g;                   # extract the ops
    while (@operator) {                                         # while the list is not empty
        $main = calculator($main, splice @operator, 0, 2);      # take 2 items off the list and process
    }
    say $main;                                                  # print result
}

sub calculator {
    my %equation = (
        "+" => sub { $_[0] + $_[1] },
        "-" => sub { $_[0] - $_[1] },
        "/" => sub { $_[0] / $_[1] },
        "*" => sub { $_[0] * $_[1] },
        "%" => sub { $_[0] % $_[1] },
        "**" => sub { $_[0] ** $_[1] },

    );
    return $equation{$_[1]}($_[0], $_[2]);
}

calculator()