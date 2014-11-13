#!/bin/sh
perl -MDBIx::Class::Schema::Loader=make_schema_at,dump_to_dir:./lib -e 'make_schema_at("Schema", { debug => 1, components => ["TimeStamp"],overwrite_modifications => 1, moniker_map => sub { +shift}},[ "dbi:SQLite:local.sqlite"])'
