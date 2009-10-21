#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'DateTime::Format::MSSQL' );
}

diag( "Testing DateTime::Format::MSSQL $DateTime::Format::MSSQL::VERSION, Perl $], $^X" );
