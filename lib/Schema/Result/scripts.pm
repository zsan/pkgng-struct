use utf8;
package Schema::Result::scripts;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::scripts

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

=head1 TABLE: C<scripts>

=cut

__PACKAGE__->table("scripts");

=head1 ACCESSORS

=head2 package_id

  data_type: 'integer'
  is_nullable: 1

=head2 script

  data_type: 'text'
  is_nullable: 1

=head2 type

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "package_id",
  { data_type => "integer", is_nullable => 1 },
  "script",
  { data_type => "text", is_nullable => 1 },
  "type",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LQ9WntUYg6fp9cYzHdON4w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
