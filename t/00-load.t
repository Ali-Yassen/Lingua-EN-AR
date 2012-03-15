
use Test::More tests => 1;

BEGIN {
    use_ok( 'Lingua::EN::AR' ) || print "Bail out!";
}

diag( "Testing Lingua::EN::AR $Lingua::EN::AR::VERSION, Perl $], $^X" );
