use Test::More qw(no_plan);

BEGIN{ use_ok( 'Date::Chinese' ); }

ok( yearofthe( 1999 ) eq "Year of the hare", "1999 - Year of the hare");
