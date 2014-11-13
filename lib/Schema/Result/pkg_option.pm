use utf8;
package Schema::Result::pkg_option;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_option

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

=head1 TABLE: C<pkg_option>

=cut

__PACKAGE__->table("pkg_option");

=head1 ACCESSORS

=head2 package_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 option_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 value

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "package_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "option_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "value",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</package_id>

=item * L</option_id>

=back

=cut

__PACKAGE__->set_primary_key("package_id", "option_id");

=head1 RELATIONS

=head2 option

Type: belongs_to

Related object: L<Schema::Result::option>

=cut

__PACKAGE__->belongs_to(
  "option",
  "Schema::Result::option",
  { option_id => "option_id" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "CASCADE" },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xQftYfMLGPtn+LwnliUUaQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
