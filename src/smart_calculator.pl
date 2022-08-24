#!/usr/bin/perl
use strict;
use warnings;

use constant { #real true false, compatible with encode_json decode_json for later (we don't want field:false... will be field:0...)
                eTRUE  =>  bless( do{\(my $o = 1)}, 'JSON::PP::Boolean' ),
                eFALSE =>  bless( do{\(my $o = 0)}, 'JSON::PP::Boolean' )
             };

my ($x, $y);

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

sub close_program {
    my $exit_text = "Goodbye!\nShutting down smart calculator ..\n";
    print("Press any key to exit ..\n");
    chomp(my $key = <STDIN>);
    print("$exit_text");
    exit()

}

sub name {
    my $name_text = "My name is Albert. Nice to meet you!\n";
    print("$name_text");
}

sub invalid_input {
    my $invalid_text = "Sorry this is beyond my ability.\nPlease try and enter something else ..\n";
    print("$invalid_text");
} 

my %operators = (
    'ADD' => addition(), 'PLUS' => addition(), 'SUM' => addition(),'ADDITION' => addition(),
    'SUB' => subtraction(), 'SUBTRACT' => subtraction(), 'MINUS' => subtraction(), 'DIFFERENCE' => subtraction(),
    'PRODUCT' => multiplication(), 'MULTIPLY' => multiplication(), 'TIMES' => multiplication(), 'MULTIPLICATION' => multiplication(),
    'DIVISION' => division(), 'DIVIDE' => division(),
    'MODULAS' => modulas(), 'MOD' => modulas(), 'REMAINDER' => modulas() 
);

my %commands = (
    'EXIT' => close_program(), 'FINISH' => close_program(), 'Close' => close_program(),'DONE' => close_program(), 'END' => close_program(),
    'NAME' => name(), 'CALLED' => name() 
);

sub main {
    my $opening_text_1 = "Booting up smart calculator ... \n";
    my $opening_text_2 = "Hello! My name is Albert\n";

    print("$opening_text_1\n");
    print("--------------$opening_text_2--------------\n");

    while($o=1) {

    }
}