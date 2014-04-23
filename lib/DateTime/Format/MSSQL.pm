package DateTime::Format::MSSQL;

# ABSTRACT: parse and format MSSQL DATETIME's
use strict;
use warnings;
use DateTime::Format::Strptime;

sub new {
   shift;
   DateTime::Format::Strptime->new(
     @_,
     pattern => '%Y-%m-%d %H:%M:%S.%3N'
   )
}

sub parse_datetime   { shift->new->parse_datetime(@_) }

sub format_datetime  { shift->new->format_datetime(@_) }

1;

__END__

=pod

=head1 SYNOPSIS

  use DateTime::Format::MSSQL;

  my $dt = DateTime::Format::MSSQL->parse_datetime(
    '2004-08-21 14:36:48.080'
  );

  DateTime::Format::MSSQL->format_datetime($dt); # '2004-08-21 14:36:48.080'

=head1 DESCRIPTION

This is just a basic module to help parse dates formatted from SQL Server.

=head1 METHODS

=head2 new

Instantiate a new C<DateTime::Format::MSSQL>.  You can override the
C<time_zone> that the parsed date is returned as by passing it as an argument:

 DateTime::Format::MSSQL->new(
    time_zone => 'local',
 )->parse_datetime($str)

=head2 parse_datetime

Parse a string returned by SQL Server for a C<DATETIME> column in the default
format.

=head2 format_datetime

Format a L<DateTime> object into a string in the SQL Server expected format.

=cut

