#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share dist => 'share';

WriteMakefile(
    NAME               => 'Map::Tube::Copenhagen',
    AUTHOR             => q{Søren Lund <soren@lund.org>},
    VERSION_FROM       => 'lib/Map/Tube/Copenhagen.pm',
    ABSTRACT_FROM      => 'lib/Map/Tube/Copenhagen.pm',
    LICENSE            => 'artistic_2',
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker'     => 0,
        'File::ShareDir::Install' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Moo'                  => '2.000000',
        'namespace::autoclean' => '0.28',
        'File::Share'          => '0.25',
        'Map::Tube'            => '3.40',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Map-Tube-Copenhagen-*' },
);

package MY;
use File::ShareDir::Install 'postamble';
