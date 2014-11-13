use utf8;
package Schema::Result::pkg_lock;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_lock

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("TimeStamp");

=head1 TABLE: C<pkg_lock>

=cut

__PACKAGE__->table("pkg_lock");

=head1 ACCESSORS

=head2 exclusive

  data_type: 'integer'
  is_nullable: 1
  size: 1

=head2 advisory

  data_type: 'integer'
  is_nullable: 1
  size: 1

=head2 read

  data_type: 'integer'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "exclusive",
  { data_type => "integer", is_nullable => 1, size => 1 },
  "advisory",
  { data_type => "integer", is_nullable => 1, size => 1 },
  "read",
  { data_type => "integer", is_nullable => 1, size => 8 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A4xi1YcR1CuZKGQPdElz6g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
