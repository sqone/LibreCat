use Catmandu::Sane;
use Test::More;
use Test::Exception;

my $pkg;

BEGIN {
    $pkg = 'LibreCat::Worker::Mailer';
    use_ok $pkg;
}
require_ok $pkg;

my $mailer = $pkg->new();
can_ok $mailer, 'work';

lives_ok {
    $mailer->work(
        {
            from    => 'me@example.com',
            to      => 'you@example.com',
            subject => "Mail!"
        }
        )
}
"Calling work is safe.";

done_testing;
