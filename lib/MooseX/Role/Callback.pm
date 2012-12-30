package MooseX::Role::Callback;

our $VERSION = '0.01';

# ABSTRACT: Execute a callback function when a role is applied

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

Execute a callback function when a role is applied.

=head1 FUNCTIONS

=head2 C<included>

=cut
