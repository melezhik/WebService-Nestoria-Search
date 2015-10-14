modify_resource(sub {
    my $r =  shift;
    s/search_listings/?place_name=soho&action=search_listings&encoding=json&country=uk&listing_type=buy&pretty=1/ for $r;
    "'$r'";
})
