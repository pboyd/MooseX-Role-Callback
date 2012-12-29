package MooseX::Role::Callback;

use strict;
use warnings;

use Moose qw//;
use Moose::Exporter;

Moose::Exporter->setup_import_methods(
    with_meta => ['included'],
    role_metaroles => {
        role => ['MooseX::Role::Callback::Meta::Trait'],
    }
);

sub included {
    my ($meta, $role, $callback) = @_;
    push @{$meta->include_callbacks}, $callback;
    return;
}

1;

__END__

=pod

=head1 NAME

MooseX::Role::Callback

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 FUNCTIONS

=head2 C<included>

=cut
