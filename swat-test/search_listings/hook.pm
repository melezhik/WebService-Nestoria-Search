modify_resource(sub {
    my $r =  shift;
    s/search_listings// for $r;
    $r;
});

set_response_processor( sub{
    my $hdr     = shift;
    my $body    = shift;
    use JSON;
    my $r = decode_json($body);
    return join "\n", (
        "status code: $r->{response}->{status_code}",
        "status text: $r->{response}->{status_text}"
    );
})

