use utf8;
package Schema::Result::deps;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::deps

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

=head1 TABLE: C<deps>

=cut

__PACKAGE__->table("deps");

=head1 ACCESSORS

=head2 origin

  data_type: 'text'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 version

  data_type: 'text'
  is_nullable: 0

=head2 package_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "origin",
  { data_type => "text", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 0 },
  "version",
  { data_type => "text", is_nullable => 0 },
  "package_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<origin_version_package_id_unique>

=over 4

=item * L</origin>

=item * L</version>

=item * L</package_id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "origin_version_package_id_unique",
  ["origin", "version", "package_id"],
);

=head1 RELATIONS

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jUT7OA+4JGzVHEVrVjEpww


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
