use utf8;
package Schema::Result::pkg_directories;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_directories

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

=head1 TABLE: C<pkg_directories>

=cut

__PACKAGE__->table("pkg_directories");

=head1 ACCESSORS

=head2 package_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 directory_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 try

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "package_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "directory_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "try",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</package_id>

=item * L</directory_id>

=back

=cut

__PACKAGE__->set_primary_key("package_id", "directory_id");

=head1 RELATIONS

=head2 directory

Type: belongs_to

Related object: L<Schema::Result::directories>

=cut

__PACKAGE__->belongs_to(
  "directory",
  "Schema::Result::directories",
  { id => "directory_id" },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1HNA5yO/64XtT6fFqawnHg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
