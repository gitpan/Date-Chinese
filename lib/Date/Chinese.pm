#$Header: /home/cvs/date-chinese/lib/Date/Chinese.pm,v 1.2 2001/08/06 02:01:21 rbowen Exp $
package Date::Chinese;
use strict;

BEGIN {
	use Exporter ();
	use vars qw ($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
	$VERSION     = (qw'$Revision: 1.2 $')[1];
	@ISA         = qw (Exporter);
	@EXPORT      = qw ( yearofthe );
	@EXPORT_OK   = qw ();
	%EXPORT_TAGS = ();
}

=head1 NAME

Date::Chinese - Calculate dates in the Chinese calendar

=head1 SYNOPSIS

  use Date::Chinese;

  $year = yearofthe( 1999 ); # "Year of the hare"

=head1 DESCRIPTION

Please note that the API of this module is I<guaranteed> to change in
future versions. I'll hopefully be adding more details about the date,
rather than just the year. And this will be a Date::ICal subclass, so
that conversions directly from ICal to Chinese to ISO, for example,
will be very simple.

=head1 SUPPORT

datetime@perl.org

=head1 AUTHOR

	Rich Bowen
	CPAN ID: RBOW
	rbowen@rcbowen.com
	http://www.rcbowen.com

=head1 COPYRIGHT

Copyright (c) 2001 Rich Bowen. All rights reserved.
This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.

=head1 SEE ALSO

 perl(1).

=cut

sub yearofthe {
    my $year = shift;

    my $cycle = ( $year - 3 )%60;

    my $stem = $cycle % 10; # Not using this right now
    my @stems = qw(jia yi bing ding wu ji geng xin ren gui);
    $stem = $stems[$stem-1];

    my $branch = $cycle % 12; 
    # my @branches = qw( zi chou yin mao chen si 
    #                    wu wei shen you xu hai );
    my @branches = qw(rat ox tiger hare dragon snake horse
                      sheep monkey fowl dog pig );
    my $yearofthe = $branches[$branch - 1];

    return "Year of the $yearofthe";
}

1;

