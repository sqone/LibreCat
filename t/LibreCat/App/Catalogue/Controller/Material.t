use Catmandu::Sane;
use LibreCat -load => {layer_paths => [qw(t/layer)]};
use Test::More;
use Test::Exception;
use warnings FATAL => 'all';

my $pkg;

BEGIN {
    $pkg = 'LibreCat::App::Catalogue::Controller::Material';
    use_ok $pkg;
}

require_ok $pkg;

done_testing;
