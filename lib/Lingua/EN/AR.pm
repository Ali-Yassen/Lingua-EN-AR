package Lingua::EN::AR;
use Locale::PO;
use strict;
use utf8;
use File::ShareDir ':ALL';

use base 'Exporter';
our @EXPORT_OK = qw(toArabic);

=head1 NAME

Lingua::EN::AR 

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Module provides a local simple word to word, English to Arabic dictionary.
We have more than 87000+ words.

    use Lingua::EN::AR qw(toArabic);
    use utf8;
    
    print "The Arabic of car is : ".toArabic("car");



=head1 SUBROUTINES

=head2 toArabic("English Term")

=cut

sub toArabic {
    my $word = shift;
    $word =~ s/^\s+//;
    $word =~ s/\s+$//;
    $word = ucfirst lc $word;
    my $char = substr( $word, 0, 1 );
    my $file = File::ShareDir::dist_file("Lingua-EN-AR","full_wordlist_" . $char . ".po");
    my $dict = Locale::PO->load_file_ashash( $file );
    if ( exists $dict->{"\"$word\""} ) {
        my $result = $dict->{"\"$word\""}{"msgstr"};
        return substr( $result, 1, -1 );
    }
    else {
        return "No matches";
    }
}



=head1 AUTHOR

Moosa, C<< <moosa at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-lingua-en-ar at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Lingua-EN-AR>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Lingua::EN::AR


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Lingua-EN-AR>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Lingua-EN-AR>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Lingua-EN-AR>

=item * Search CPAN

L<http://search.cpan.org/dist/Lingua-EN-AR/>

=back


=head1 ACKNOWLEDGEMENTS

Thanks and credits for Arabeyes team L<http://projects.arabeyes.org/index.php>

=cut 

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Moosa.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Lingua::EN::AR
