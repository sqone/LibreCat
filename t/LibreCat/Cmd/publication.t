BEGIN {
    use Catmandu::Sane;
    use Path::Tiny;
    use lib path(__FILE__)->parent->parent->child('lib')->stringify;
    use LibreCat::Layers;

    LibreCat::Layers->new(layer_paths => [qw(t/layer)])->load;
}

use strict;
use warnings;
use Catmandu::Sane;
use Catmandu;

use LibreCat::CLI;
use Test::More;
use Test::Exception;
use App::Cmd::Tester;
use Cpanel::JSON::XS;

my $pkg;

BEGIN {
    $pkg = 'LibreCat::Cmd::publication';
    use_ok $pkg;
}

require_ok $pkg;

# empty db
Catmandu->store('backup')->bag('publication')->delete_all;
Catmandu->store('search')->bag('publication')->delete_all;

{
    my $result = test_app(qq|LibreCat::CLI| => ['publication']);
    ok $result->error, 'ok threw an exception';
}

{
    my $result = test_app(qq|LibreCat::CLI| => ['publication', 'list']);

    ok !$result->error, 'ok threw no exception';

    my $output = $result->stdout;
    ok $output , 'got an output';

    my $count = count_publication($output);

    ok $count == 0, 'got no publications';
}

{
    my $result = test_app(qq|LibreCat::CLI| =>
            ['publication', 'add', 't/records/invalid-publication.yml']);
    ok $result->error, 'ok threw an exception';
}

{
    my $result = test_app(qq|LibreCat::CLI| =>
            ['publication', 'add', 't/records/valid-publication.yml']);

    ok !$result->error, 'ok threw no exception';

    my $output = $result->stdout;
    ok $output , 'got an output';

    like $output , qr/^added 999999999/, 'added 999999999';
}

{
    my $result
        = test_app(qq|LibreCat::CLI| => ['publication', 'get', '999999999']);

    ok !$result->error, 'ok threw no exception';

    my $output = $result->stdout;

    ok $output , 'got an output';

    my $importer = Catmandu->importer('YAML', file => \$output);

    my $record = $importer->first;

    is $record->{_id}, 999999999, 'got really a 999999999 record';
}

{
    my $result = test_app(
        qq|LibreCat::CLI| => ['publication', 'purge', '999999999']);

    ok !$result->error, 'ok threw no exception';

    my $output = $result->stdout;
    ok $output , 'got an output';

    like $output , qr/^purged 999999999/, 'purged 999999999';
}

{
    my $result
        = test_app(qq|LibreCat::CLI| => ['publication', 'get', '999999999']);

    ok $result->error, 'ok no exception';

    my $output = $result->stdout;
    ok length($output) == 0, 'got no result';
}

done_testing;

sub count_publication {
    my $str = shift;
    my @lines = grep {!/(^count:|.*\sdeleted\s.*)/} split(/\n/, $str);
    int(@lines);
}