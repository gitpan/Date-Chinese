use Test::More qw(no_plan);

BEGIN{ use_ok( 'Date::Chinese' ); }

is( yearofthe( 1999 ), "Year of the hare", 
    "1999 - Year of the hare");
is( yearofthe( 2000 ), "Year of the dragon",
    "2000 - Year of the dragon" );
is( yearofthe( 2001 ), "Year of the snake",
    "2001 - Year of the snake" );
is( yearofthe( 2002 ), "Year of the horse",
    "2002 - Year of the horse" );
is( yearofthe( 2003 ), "Year of the sheep",
    "2003 - Year of the sheep" );
is( yearofthe( 2004 ), "Year of the monkey",
    "2004 - Year of the monkey" );
is( yearofthe( 2005 ), "Year of the fowl",
    "2005 - Year of the fowl" );
is( yearofthe( 2006 ), "Year of the dog",
    "2006 - Year of the dog" );
