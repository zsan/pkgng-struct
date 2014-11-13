use utf8;
package Schema::Result::option;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::option

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

=head1 TABLE: C<option>

=cut

__PACKAGE__->table("option");

=head1 ACCESSORS

=head2 option_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 option

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "option_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "option",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</option_id>

=back

=cut

__PACKAGE__->set_primary_key("option_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<option_unique>

=over 4

=item * L</option>

=back

=cut

__PACKAGE__->add_unique_constraint("option_unique", ["option"]);

=head1 RELATIONS

=head2 pkg_option_defaults

Type: has_many

Related object: L<Schema::Result::pkg_option_default>

=cut

__PACKAGE__->has_many(
  "pkg_option_defaults",
  "Schema::Result::pkg_option_default",
  { "foreign.option_id" => "self.option_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_option_descs

Type: has_many

Related object: L<Schema::Result::pkg_option_desc>

=cut

__PACKAGE__->has_many(
  "pkg_option_descs",
  "Schema::Result::pkg_option_desc",
  { "foreign.option_id" => "self.option_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_options

Type: has_many

Related object: L<Schema::Result::pkg_option>

=cut

__PACKAGE__->has_many(
  "pkg_options",
  "Schema::Result::pkg_option",
  { "foreign.option_id" => "self.option_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fmFhhHQ7xbt87fgZ6sbd9w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
