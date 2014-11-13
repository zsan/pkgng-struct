use utf8;
package Schema::Result::packages;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::packages

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

=head1 TABLE: C<packages>

=cut

__PACKAGE__->table("packages");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 origin

  data_type: 'text'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 version

  data_type: 'text'
  is_nullable: 0

=head2 comment

  data_type: 'text'
  is_nullable: 0

=head2 desc

  data_type: 'text'
  is_nullable: 0

=head2 mtree_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 message

  data_type: 'text'
  is_nullable: 1

=head2 arch

  data_type: 'text'
  is_nullable: 0

=head2 maintainer

  data_type: 'text'
  is_nullable: 0

=head2 www

  data_type: 'text'
  is_nullable: 1

=head2 prefix

  data_type: 'text'
  is_nullable: 0

=head2 flatsize

  data_type: 'integer'
  is_nullable: 0

=head2 automatic

  data_type: 'integer'
  is_nullable: 0

=head2 locked

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 licenselogic

  data_type: 'integer'
  is_nullable: 0

=head2 infos

  data_type: 'text'
  is_nullable: 1

=head2 time

  data_type: 'integer'
  is_nullable: 1

=head2 pkg_format_version

  data_type: 'integer'
  is_nullable: 1

=head2 manifestdigest

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "origin",
  { data_type => "text", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 0 },
  "version",
  { data_type => "text", is_nullable => 0 },
  "comment",
  { data_type => "text", is_nullable => 0 },
  "desc",
  { data_type => "text", is_nullable => 0 },
  "mtree_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "message",
  { data_type => "text", is_nullable => 1 },
  "arch",
  { data_type => "text", is_nullable => 0 },
  "maintainer",
  { data_type => "text", is_nullable => 0 },
  "www",
  { data_type => "text", is_nullable => 1 },
  "prefix",
  { data_type => "text", is_nullable => 0 },
  "flatsize",
  { data_type => "integer", is_nullable => 0 },
  "automatic",
  { data_type => "integer", is_nullable => 0 },
  "locked",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "licenselogic",
  { data_type => "integer", is_nullable => 0 },
  "infos",
  { data_type => "text", is_nullable => 1 },
  "time",
  { data_type => "integer", is_nullable => 1 },
  "pkg_format_version",
  { data_type => "integer", is_nullable => 1 },
  "manifestdigest",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<origin_name_unique>

=over 4

=item * L</origin>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("origin_name_unique", ["origin", "name"]);

=head1 RELATIONS

=head2 deps

Type: has_many

Related object: L<Schema::Result::deps>

=cut

__PACKAGE__->has_many(
  "deps",
  "Schema::Result::deps",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 files

Type: has_many

Related object: L<Schema::Result::files>

=cut

__PACKAGE__->has_many(
  "files",
  "Schema::Result::files",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 mtree

Type: belongs_to

Related object: L<Schema::Result::mtree>

=cut

__PACKAGE__->belongs_to(
  "mtree",
  "Schema::Result::mtree",
  { id => "mtree_id" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "CASCADE",
  },
);

=head2 pkg_annotations

Type: has_many

Related object: L<Schema::Result::pkg_annotation>

=cut

__PACKAGE__->has_many(
  "pkg_annotations",
  "Schema::Result::pkg_annotation",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_categories

Type: has_many

Related object: L<Schema::Result::pkg_categories>

=cut

__PACKAGE__->has_many(
  "pkg_categories",
  "Schema::Result::pkg_categories",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_conflicts

Type: has_many

Related object: L<Schema::Result::pkg_conflicts>

=cut

__PACKAGE__->has_many(
  "pkg_conflicts",
  "Schema::Result::pkg_conflicts",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_directories

Type: has_many

Related object: L<Schema::Result::pkg_directories>

=cut

__PACKAGE__->has_many(
  "pkg_directories",
  "Schema::Result::pkg_directories",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_groups

Type: has_many

Related object: L<Schema::Result::pkg_groups>

=cut

__PACKAGE__->has_many(
  "pkg_groups",
  "Schema::Result::pkg_groups",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_licenses

Type: has_many

Related object: L<Schema::Result::pkg_licenses>

=cut

__PACKAGE__->has_many(
  "pkg_licenses",
  "Schema::Result::pkg_licenses",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_option_defaults

Type: has_many

Related object: L<Schema::Result::pkg_option_default>

=cut

__PACKAGE__->has_many(
  "pkg_option_defaults",
  "Schema::Result::pkg_option_default",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_option_descs

Type: has_many

Related object: L<Schema::Result::pkg_option_desc>

=cut

__PACKAGE__->has_many(
  "pkg_option_descs",
  "Schema::Result::pkg_option_desc",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_options

Type: has_many

Related object: L<Schema::Result::pkg_option>

=cut

__PACKAGE__->has_many(
  "pkg_options",
  "Schema::Result::pkg_option",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_scripts

Type: has_many

Related object: L<Schema::Result::pkg_script>

=cut

__PACKAGE__->has_many(
  "pkg_scripts",
  "Schema::Result::pkg_script",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_shlibs_provided

Type: has_many

Related object: L<Schema::Result::pkg_shlibs_provided>

=cut

__PACKAGE__->has_many(
  "pkg_shlibs_provided",
  "Schema::Result::pkg_shlibs_provided",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_shlibs_required

Type: has_many

Related object: L<Schema::Result::pkg_shlibs_required>

=cut

__PACKAGE__->has_many(
  "pkg_shlibs_required",
  "Schema::Result::pkg_shlibs_required",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkg_users

Type: has_many

Related object: L<Schema::Result::pkg_users>

=cut

__PACKAGE__->has_many(
  "pkg_users",
  "Schema::Result::pkg_users",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pkgs_provides

Type: has_many

Related object: L<Schema::Result::pkg_provides>

=cut

__PACKAGE__->has_many(
  "pkgs_provides",
  "Schema::Result::pkg_provides",
  { "foreign.package_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 categories

Type: many_to_many

Composing rels: L</pkg_categories> -> category

=cut

__PACKAGE__->many_to_many("categories", "pkg_categories", "category");

=head2 licenses

Type: many_to_many

Composing rels: L</pkg_licenses> -> license

=cut

__PACKAGE__->many_to_many("licenses", "pkg_licenses", "license");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-11-13 17:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KDCsSloHKnIwoft7kxUwhw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
