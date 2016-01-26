modify_resource(sub {
    my $r =  shift;
    s/echo// for $r;
    $r;
});

set_response_processor( sub{
    my $hdr     = shift;
    my $body    = shift;
    use JSON;
    my $r = decode_json($body);
    return join "\n", (
        "action: $r->{response}->{action}",
        "status code: $r->{response}->{status_code}",
        "status text: $r->{response}->{status_text}"
    );
})

