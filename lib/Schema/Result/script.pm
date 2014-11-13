use utf8;
package Schema::Result::script;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::script

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

=head1 TABLE: C<script>

=cut

__PACKAGE__->table("script");

=head1 ACCESSORS

=head2 script_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 script

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "script_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "script",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</script_id>

=back

=cut

__PACKAGE__->set_primary_key("script_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<script_unique>

=over 4

=item * L</script>

=back

=cut

__PACKAGE__->add_unique_constraint("script_unique", ["script"]);

=head1 RELATIONS

=head2 pkg_scripts

Type: has_many

Related object: L<Schema::Result::pkg_script>

=cut

__PACKAGE__->has_many(
  "pkg_scripts",
  "Schema::Result::pkg_script",
  { "foreign.script_id" => "self.script_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1RZvcyEq5sB0utC8M84cew


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
