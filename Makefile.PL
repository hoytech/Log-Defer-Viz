use strict;

use ExtUtils::MakeMaker;


my %args = (
    NAME => 'Log::Defer::Viz',
    VERSION_FROM => 'lib/Log/Defer/Viz.pm',
    PREREQ_PM => {
      'JSON::XS' => 0,
      'Date::Format' => 0,
      'Getopt::Long' => 0,
      'common::sense' => 0,
      'Term::Size' => 0,
    },
    LIBS              => [],
    DEFINE            => '',
    LICENSE => 'perl',
    dist => {
      PREOP => 'perldoc -uT lib/Log/Defer/Viz.pm > README.pod; pod2text README.pod > $(DISTVNAME)/README',
    },
);


my $eummv = eval ($ExtUtils::MakeMaker::VERSION);
if ($eummv >= 6.45) {
    $args{META_MERGE} = {
        resources => {
            repository => 'git://github.com/hoytech/Log-Defer-Viz.git',
            bugtracker => 'https://github.com/hoytech/Log-Defer-Viz/issues',
        },
    };
}

WriteMakefile(%args);
