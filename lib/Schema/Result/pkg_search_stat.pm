use utf8;
package Schema::Result::pkg_search_stat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::pkg_search_stat

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

=head1 TABLE: C<pkg_search_stat>

=cut

__PACKAGE__->table("pkg_search_stat");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 value

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "value",
  { data_type => "blob", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YBtzkR8rsdiTB2UhSF2WwQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
