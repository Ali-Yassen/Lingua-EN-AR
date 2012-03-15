use strict;
use warnings;
use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share 'share';

WriteMakefile(
    NAME                => 'Lingua::EN::AR',
    AUTHOR              => q{Moosa <moosa@cpan.org>},
    VERSION_FROM        => 'lib/Lingua/EN/AR.pm',
    ABSTRACT_FROM       => 'lib/Lingua/EN/AR.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Locale::PO' => 0,
        'Test::More' => 0,
        'File::ShareDir::Install' => 0,
        'File::ShareDir' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Lingua-EN-AR-*' },
);
package MY;
use File::ShareDir::Install qw(postamble);


  
    