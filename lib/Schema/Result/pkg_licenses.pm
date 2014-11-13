use utf8;
package Schema::Result::pkg_licenses;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_licenses

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

=head1 TABLE: C<pkg_licenses>

=cut

__PACKAGE__->table("pkg_licenses");

=head1 ACCESSORS

=head2 package_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 license_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "package_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "license_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</package_id>

=item * L</license_id>

=back

=cut

__PACKAGE__->set_primary_key("package_id", "license_id");

=head1 RELATIONS

=head2 license

Type: belongs_to

Related object: L<Schema::Result::licenses>

=cut

__PACKAGE__->belongs_to(
  "license",
  "Schema::Result::licenses",
  { id => "license_id" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "RESTRICT" },
);

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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vWtlVaZFZLZy6dqef7Z/zA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
