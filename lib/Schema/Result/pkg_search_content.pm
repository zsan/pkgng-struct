use utf8;
package Schema::Result::pkg_search_content;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_search_content

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

=head1 TABLE: C<pkg_search_content>

=cut

__PACKAGE__->table("pkg_search_content");

=head1 ACCESSORS

=head2 docid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 c0id

  data_type: (empty string)
  is_nullable: 1

=head2 c1name

  data_type: (empty string)
  is_nullable: 1

=head2 c2origin

  data_type: (empty string)
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "docid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "c0id",
  { data_type => "", is_nullable => 1 },
  "c1name",
  { data_type => "", is_nullable => 1 },
  "c2origin",
  { data_type => "", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</docid>

=back

=cut

__PACKAGE__->set_primary_key("docid");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2asCQIVTgbH9EGwN2AwqYg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
