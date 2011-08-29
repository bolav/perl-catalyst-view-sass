use strict;
use warnings;
use Test::More tests => 3;

use FindBin;
use lib "$FindBin::Bin/lib";

use_ok('Catalyst::Test', 'TestApp');

my $view = 'Pkgconfig';

my $response;
ok(($response = request("/test?view=$view"))->is_success, 'request ok');
is($response->content, "#header {\n  background: #FFFFFF   ;\n}\n\n#header .error {\n  color: #FF0000;\n}\n", 'message ok');
