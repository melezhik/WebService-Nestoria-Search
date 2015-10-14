modify_resource(sub {
    my $r =  shift;
    s/echo/?action=echo&encoding=json&foo=bar&pretty=1/ for $r;
    "'$r'";
})
