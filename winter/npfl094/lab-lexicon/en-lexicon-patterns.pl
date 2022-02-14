#!/usr/bin/env perl
# Lexicon acquisition experiment (NPFL094).
# Copyright © 2016 Dan Zeman <zeman@ufal.mff.cuni.cz>
# License: GNU GPL

use utf8;
use open ':utf8';
binmode(STDIN, ':utf8');
binmode(STDOUT, ':utf8');
binmode(STDERR, ':utf8');

# Read the current word list with frequencies from the standard input.
while(<>)
{
    # Remove the line break. We could use chomp() but this will be more robust for Windows/Linux-originating data.
    s/\r?\n$//;
    # There is the word, tabulator (separating columns), and frequency count.
    # Separate the word from the count.
    my ($w, $c) = split(/\t/);
    # Save the word and its frequency in memory.
    $dict{$w} = $c;
}
# All words are now in memory. Loop over them again and look for expected inflection patterns.
foreach my $w (keys(%dict))
{
    # Did we also see this word with the "-s" suffix?
    # (It is either a noun and its plural form, or a verb and its 3rd person singular present form.)
    if(exists($dict{$w.'s'}))
    {
        my $w1 = $w.'s';
        my $pair = "$w\t$dict{$w}\t$w1\t$dict{$w1}";
        my $cpair = $dict{$w} + $dict{$w1};
        $pairs{$pair} = $cpair;
    }
    # Sometimes the plural suffix is "-es", not "-s".
    if(exists($dict{$w.'es'}))
    {
        my $w1 = $w.'es';
        my $pair = "$w\t$dict{$w}\t$w1\t$dict{$w1}";
        my $cpair = $dict{$w} + $dict{$w1};
        $pairs{$pair} = $cpair;
    }
    # And for words ending in "-y" ("baby"), the plural ends in "-ies".
    if($w =~ m/^(.+)y$/ && exists($dict{$1.'ies'}))
    {
        my $w1 = $1.'ies';
        my $pair = "$w\t$dict{$w}\t$w1\t$dict{$w1}";
        my $cpair = $dict{$w} + $dict{$w1};
        $pairs{$pair} = $cpair;
    }
}
# Sort pairs by their total frequency.
@p = sort {$pairs{$b} <=> $pairs{$a}} (keys(%pairs));
# Print all pairs with frequencies to the standard output.
foreach my $p (@p)
{
    print("$p\t$pairs{$p}\n");
}
