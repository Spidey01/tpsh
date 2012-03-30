# tests for the cd and chdir built-in commands.

assert {
    cd_bin();

    return $ENV{PWD} eq $ENV{HOME} and $ENV{OLDPWD} != undef;
} 'cd is supposed to change to $HOME and set $PWD and $OLDPWD';

assert {
    # so we have a known OLDPWD.
    cd_bin() or die $!;

    my $tmpdir = $ENV{TMPDIR} ||  $ENV{TEMP} || "/tmp";
    cd_bin $tmpdir;

    return $ENV{PWD} eq $tmpdir and $ENV{OLDPWD} eq $HOME{HOME};
} 'cd /tmp should set PWD and OLDPWD accordingly';

assert {
    my $tests_d = "tests.d";
    my $target = File::Spec->catfile($TestRunnerDir, $tests_d);

    return unless -d $target;

    $ENV{CDPATH} = $TestRunnerDir;
    cd_bin( ($ENV{TMPDIR} ||  $ENV{TEMP} || "/tmp") );
    cd_bin $tests_d;

    $ENV{PWD} eq $target;
} 'CDPATH should work!';

