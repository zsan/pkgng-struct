use utf8;
package Schema::Result::pkg_shlibs;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_shlibs

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

=head1 TABLE: C<pkg_shlibs>

=cut

__PACKAGE__->table("pkg_shlibs");

=head1 ACCESSORS

=head2 package_id

  data_type: 'integer'
  is_nullable: 1

=head2 shlib_id

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "package_id",
  { data_type => "integer", is_nullable => 1 },
  "shlib_id",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Szc5BSsL2BmKzW7Ulxy+zg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
