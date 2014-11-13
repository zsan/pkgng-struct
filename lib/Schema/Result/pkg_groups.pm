use utf8;
package Schema::Result::pkg_groups;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_groups

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

=head1 TABLE: C<pkg_groups>

=cut

__PACKAGE__->table("pkg_groups");

=head1 ACCESSORS

=head2 package_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 group_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "package_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "group_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<package_id_group_id_unique>

=over 4

=item * L</package_id>

=item * L</group_id>

=back

=cut

__PACKAGE__->add_unique_constraint("package_id_group_id_unique", ["package_id", "group_id"]);

=head1 RELATIONS

=head2 group

Type: belongs_to

Related object: L<Schema::Result::groups>

=cut

__PACKAGE__->belongs_to(
  "group",
  "Schema::Result::groups",
  { id => "group_id" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "RESTRICT",
  },
);

=head2 package

Type: belongs_to

Related object: L<Schema::Result::packages>

=cut

__PACKAGE__->belongs_to(
  "package",
  "Schema::Result::packages",
  { id => "package_id" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CECPlWCboaCD7qH+F5D3Zw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
