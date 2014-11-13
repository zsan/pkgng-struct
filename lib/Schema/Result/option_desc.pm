use utf8;
package Schema::Result::option_desc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::option_desc

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

=head1 TABLE: C<option_desc>

=cut

__PACKAGE__->table("option_desc");

=head1 ACCESSORS

=head2 option_desc_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 option_desc

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "option_desc_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "option_desc",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</option_desc_id>

=back

=cut

__PACKAGE__->set_primary_key("option_desc_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<option_desc_unique>

=over 4

=item * L</option_desc>

=back

=cut

__PACKAGE__->add_unique_constraint("option_desc_unique", ["option_desc"]);

=head1 RELATIONS

=head2 pkg_option_descs

Type: has_many

Related object: L<Schema::Result::pkg_option_desc>

=cut

__PACKAGE__->has_many(
  "pkg_option_descs",
  "Schema::Result::pkg_option_desc",
  { "foreign.option_desc_id" => "self.option_desc_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ksdJWZDlx4u+uMgCIZVT5Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
