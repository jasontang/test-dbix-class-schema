package # hide from PAUSE
    TDCSTest::Schema::Audiophile;

use base 'DBIx::Class::Core';

__PACKAGE__->table('audiophile');

__PACKAGE__->add_columns(
    qw<
        personid
    >
);

__PACKAGE__->set_primary_key('personid');

__PACKAGE__->belongs_to(
    person => 'Person',
    { 'foreign.personid' => 'self.personid' },
    { proxy => [qw/name cdshop_audiophiles/] },
);

1;
