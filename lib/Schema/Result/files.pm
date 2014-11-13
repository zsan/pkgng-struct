use utf8;
package Schema::Result::files;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::files

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

=head1 TABLE: C<files>

=cut

__PACKAGE__->table("files");

=head1 ACCESSORS

=head2 path

  data_type: 'text'
  is_nullable: 0

=head2 sha256

  data_type: 'text'
  is_nullable: 1

=head2 package_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "path",
  { data_type => "text", is_nullable => 0 },
  "sha256",
  { data_type => "text", is_nullable => 1 },
  "package_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</path>

=back

=cut

__PACKAGE__->set_primary_key("path");

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cT4Ni9t305IEUCwc3PoaMw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
