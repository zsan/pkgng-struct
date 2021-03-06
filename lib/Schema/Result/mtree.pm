use utf8;
package Schema::Result::mtree;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::mtree

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

=head1 TABLE: C<mtree>

=cut

__PACKAGE__->table("mtree");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 content

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "content",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<content_unique>

=over 4

=item * L</content>

=back

=cut

__PACKAGE__->add_unique_constraint("content_unique", ["content"]);

=head1 RELATIONS

=head2 packages

Type: has_many

Related object: L<Schema::Result::packages>

=cut

__PACKAGE__->has_many(
  "packages",
  "Schema::Result::packages",
  { "foreign.mtree_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ITturO7N5B+QFuwx+dFEtg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
