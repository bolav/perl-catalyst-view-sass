use strict;
use warnings;
use Test::More tests => 3;

use FindBin;
use lib "$FindBin::Bin/lib";

use_ok('Catalyst::Test', 'TestApp');

my $view = 'Pkgconfig';

my $response;
ok(($response = request("/test?view=$view"))->is_success, 'request ok');
is($response->content, ".error {\n  color: #FF0000;\n}\n\n#header {\n  background: #FFFFFF   ;\n}\n", 'message ok');
