package MooseX::Role::Callback::Meta::Trait;

use Moose::Role;

has include_callbacks => (
    is      => 'ro',
    isa     => 'ArrayRef[CodeRef]',
    default => sub { [] },
);

before 'apply' => sub {
    my ( $meta, $thing ) = @_;
    $_->( $meta, $thing ) for @{ $meta->include_callbacks };

    return;
};

1;
