use inc::Module::Install;

perl_version '5.008001';

name 'Catalyst-View-Sass';
all_from 'lib/Catalyst/View/Sass.pm';

requires 'Catalyst'        => '5.7';
requires 'Text::Sass'      => 0;
requires 'File::Slurp'     => 0;

test_requires 'Test::More';

auto_install;
resources repository => 'http://github.com/bolav/perl-catalyst-view-sass';

WriteAll;
