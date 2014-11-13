use utf8;
package Schema::Result::pkg_search;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_search

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

=head1 TABLE: C<pkg_search>

=cut

__PACKAGE__->table("pkg_search");

=head1 ACCESSORS

=head2 id

  data_type: (empty string)
  is_nullable: 1

=head2 name

  data_type: (empty string)
  is_nullable: 1

=head2 origin

  data_type: (empty string)
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "", is_nullable => 1 },
  "name",
  { data_type => "", is_nullable => 1 },
  "origin",
  { data_type => "", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DaDZC15iXagwtDpN12LIIQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
