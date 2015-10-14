# swat-nestoria
[swat](https://github.com/melezhik/swat) tests for nestoria API

# usage

    
    carton 
    carton exec swat 

# sample output
```
vagrant@Debian-jessie-amd64-netboot:~/projects/swat-nestoria$ carton exec swat
/home/vagrant/.swat/.cache/10099/prove/search_listings/00.GET.t ..
ok 1 - sleep for one second
ok 2 - GET http://api.nestoria.co.uk/api'/?place_name=soho&action=search_listings&encoding=json&country=uk&listing_type=buy&pretty=1' succeeded
# response saved to /home/vagrant/.swat/.cache/10099/prove/ByPT_0DiPN
ok 3 - GET '/?place_name=soho&action=search_listings&encoding=json&country=uk&listing_type=buy&pretty=1' returns 200 OK
ok 4 - GET '/?place_name=soho&action=search_listings&encoding=json&country=uk&listing_type=buy&pretty=1' returns | "response" : {
ok 5 - GET '/?place_name=soho&action=search_listings&encoding=json&country=uk&listing_type=buy&pretty=1' returns | "application_response_code" : "100"
1..5
ok
/home/vagrant/.swat/.cache/10099/prove/echo/00.GET.t .............
ok 1 - sleep for one second
ok 2 - GET http://api.nestoria.co.uk/api'/?action=echo&encoding=json&foo=bar&pretty=1' succeeded
# response saved to /home/vagrant/.swat/.cache/10099/prove/ptNa4bJgIL
ok 3 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns 200 OK
ok 4 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "request" : {
ok 5 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "action" : "echo",
ok 6 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "encoding" : "json",
ok 7 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "foo" : "bar",
ok 8 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "pretty" : "1",
ok 9 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "sort" : "nestoria_rank"
ok 10 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | },
ok 11 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "response" : {
ok 12 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "action" : "echo",
ok 13 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' matches | "created_http" : ".*",
ok 14 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' matches | "created_unix" : \d+,
ok 15 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "encoding" : "json",
ok 16 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "foo" : "bar",
ok 17 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "pretty" : "1",
ok 18 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "sort" : "nestoria_rank",
ok 19 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "status_code" : "200",
ok 20 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "status_text" : "OK",
ok 21 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | "we_are_hiring" : "We are hiring programmers! http://lokku.com/jobs"
ok 22 - GET '/?action=echo&encoding=json&foo=bar&pretty=1' returns | }
1..22
ok
All tests successful.
Files=2, Tests=27, 18 wallclock secs ( 0.03 usr  0.01 sys +  0.16 cusr  0.02 csys =  0.22 CPU)
Result: PASS

```


# see also

https://github.com/melezhik/swat

