use utf8;
package Schema::Result::annotation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::annotation

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

=head1 TABLE: C<annotation>

=cut

__PACKAGE__->table("annotation");

=head1 ACCESSORS

=head2 annotation_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 annotation

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "annotation_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "annotation",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</annotation_id>

=back

=cut

__PACKAGE__->set_primary_key("annotation_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<annotation_unique>

=over 4

=item * L</annotation>

=back

=cut

__PACKAGE__->add_unique_constraint("annotation_unique", ["annotation"]);

=head1 RELATIONS

=head2 pkg_annotation_tags

Type: has_many

Related object: L<Schema::Result::pkg_annotation>

=cut

__PACKAGE__->has_many(
  "pkg_annotation_tags",
  "Schema::Result::pkg_annotation",
  { "foreign.tag_id" => "self.annotation_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_annotation_values

Type: has_many

Related object: L<Schema::Result::pkg_annotation>

=cut

__PACKAGE__->has_many(
  "pkg_annotation_values",
  "Schema::Result::pkg_annotation",
  { "foreign.value_id" => "self.annotation_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bkqTR+K+tQjm1d23iAAjKA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
