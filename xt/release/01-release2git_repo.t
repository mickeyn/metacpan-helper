#!perl

use strict;
use warnings;

use Test::More 0.88 tests => 2;
use MetaCPAN::Helper;

my $helper = MetaCPAN::Helper->new();
ok(defined($helper), "instantiate MetaCPAN::Helper");

my $RELEASE_NAME = 'Moose';
my $repo         = eval { $helper->release2repo($RELEASE_NAME) };

ok(
    (!defined $repo or !ref($repo)),
    "release2repo('$RELEASE_NAME') should return a scalar value"
);

