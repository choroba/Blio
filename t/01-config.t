use warnings;
use strict;

use Test::More;
use Blio;

use Path::Class;

use lib qw(t);
use testlib;

my $blio = Blio->new_with_config(
    ouptut_dir => testlib::testdir(),
    source_dir => Path::Class::dir(qw( . t testdata config )),
    configfile => Path::Class::dir(qw( . t testdata config blio.ini )));
ok($blio, 'instantiates');
is($blio->template_dir, 'tt', 'reads the value from config');

done_testing();
