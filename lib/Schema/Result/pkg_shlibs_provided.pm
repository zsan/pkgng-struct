use utf8;
package Schema::Result::pkg_shlibs_provided;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_shlibs_provided

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

=head1 TABLE: C<pkg_shlibs_provided>

=cut

__PACKAGE__->table("pkg_shlibs_provided");

=head1 ACCESSORS

=head2 package_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 shlib_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "package_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "shlib_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<package_id_shlib_id_unique>

=over 4

=item * L</package_id>

=item * L</shlib_id>

=back

=cut

__PACKAGE__->add_unique_constraint("package_id_shlib_id_unique", ["package_id", "shlib_id"]);

=head1 RELATIONS

=head2 package

Type: belongs_to

Related object: L<Schema::Result::packages>

=cut

__PACKAGE__->belongs_to(
  "package",
  "Schema::Result::packages",
  { id => "package_id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 shlib

Type: belongs_to

Related object: L<Schema::Result::shlibs>

=cut

__PACKAGE__->belongs_to(
  "shlib",
  "Schema::Result::shlibs",
  { id => "shlib_id" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "RESTRICT" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Mk6O4/UECNiASJnAg7On6Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
