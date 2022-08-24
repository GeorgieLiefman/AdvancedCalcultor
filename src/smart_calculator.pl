#!/usr/bin/perl
use strict;
use warnings;

sub addition {
    return $x + $y;
}

sub subtraction {
    return $x + $y;
}

sub multiplication {
    return $x + $y;
}

sub division {
    return $x / $y;
}

sub modulas {
    return $x % $y;
}


operations={'ADD':add,'PLUS':add,'SUM':add,'ADDITION':add,
            'SUB':sub,'SUBTRACT':sub, 'MINUS':sub,
            'DIFFERENCE':sub,'LCM':lcm,'HCF':hcf,
            'PRODUCT':mul, 'MULTIPLY':mul,'MULTIPLICATION':mul,
            'DIVISION':div,'MOD':mod,'REMAINDER'
            :mod,'MODULAS':mod}

my %operators = (
    'ADD' => addition(), 'PLUS' => addition(), 'SUM' => addition(),'ADDITION' => addition(),,
    'SUB' => subtraction(), 'SUBTRACT' => subtraction(), 'MINUS' => subtraction(), 'DIFFERENCE' => subtraction(),
    'PRODUCT' => multiplication(), 'MULTIPLY' => multiplication(), 'TIMES' => multiplication(), 'MULTIPLICATION' => multiplication(),
    'DIVISION' => division(), 'DIVIDE' => division(),
    'MODULAS' => modulas(), 'MOD' => modulas(), 'REMAINDER' => modulas() 
);



