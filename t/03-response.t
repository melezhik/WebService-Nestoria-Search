use strict;
use warnings;

use Test::More;
use Test::Warn;
use List::MoreUtils qw(apply);
use WebService::Nestoria::Search Warnings => 1;

##########################################################################
## require internet connection
##
if (! WebService::Nestoria::Search->test_connection) {
    plan 'skip_all' => 'test requires internet connection';
    exit 0;
}

##########################################################################
## plan
##
plan tests => 36;
my ($ns, $response);

##########################################################################
## create WebService::Nestoria::Search::Response object
##
$ns = WebService::Nestoria::Search->new(
    'country'           => 'uk',
    'encoding'          => 'json',
    'number_of_results' => 10,
);
ok($ns && ref($ns), 'created WebService::Nestoria::Search object');

$response = $ns->query('place_name' => 'soho');
ok(
    $response && ref($response),
    'created WebService::Nestoria::Search::Response object'
);

##########################################################################
## get_raw/get_json/get_xml
##
foreach my $f (qw(get_raw get_json get_xml)) {
    my $raw = $response->$f;
    like($raw, qr/"response":{/, 'got expected raw data');
}

##########################################################################
## status_code
##
is($response->status_code, 200, 'got 200 status code');

##########################################################################
## get_hashref
##
is(ref $response->get_hashref, 'HASH', 'get_hashref returns a hash reference');

##########################################################################
## count
##
is($response->count, 10, 'got 10 listings back in response');

##########################################################################
## attribution
##
is(
    ref($response->attribution),
    'HASH',
    'got hash reference back for attribution'
);
like(
    $response->attribution_html,
    qr/^<a href="/,
    'got attribution html'
);
like(
    $response->attribution_xhtml,
    qr{" />$},
    'got attribution xhtml'
);

##########################################################################
## attribution
##
my @results = $response->results;
is(scalar(@results), 10, 'got 10 results');
isa_ok($results[0], 'WebService::Nestoria::Search::Result');

##########################################################################
## next_result
##
my $i = 1;
while (my $result = $response->next_result) {
    isa_ok($result, 'WebService::Nestoria::Search::Result');
    ok($result->get_title, "got a title for result ".$i++);
}

##########################################################################
## reset
##
is($response->next_result, undef, 'no next result');
is($response->reset, 0, 'called reset() for the iterator');
isa_ok(
    $response->next_result,
    'WebService::Nestoria::Search::Result',
    'got next result'
);