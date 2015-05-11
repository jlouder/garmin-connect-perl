use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WebService::GarminConnect',
    license             => 'GPL_3',
    dist_author         => 'Joel Loudermilk <joel@loudermilk.org>',
    dist_version_from   => 'lib/WebService/GarminConnect.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'WebService-GarminConnect-*' ],
    create_makefile_pl => 'traditional',
    meta_merge => {
        resources => {
            repository => 'https://github.com/jlouder/garmin-connect-perl'
        }
    },
);

$builder->create_build_script();
