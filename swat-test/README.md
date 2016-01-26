# swat-nestoria
[swat](https://github.com/melezhik/swat) tests for nestoria API

# usage

    
    # if you are IT guy

    sparrow index update
    sparrow plg install swat-nestoria-search    
    sparrow project create nest-api
    sparrow check add nest-api nest-api-check 
    sparrow check set nest-api nest-api-check swat-nestoria-search
    sparrow check run nest-api nest-api-check 
    
    # if you are dev guy

    carton exec swat    

# sample output

    /home/vagrant/.swat/.cache/1797/prove/echo/00.GET.t .............
    ok 1 - GET http://api.nestoria.co.uk/api/ succeeded
    # response http headers saved to /home/vagrant/.swat/.cache/1797/prove/bEWDoksD59.hdr
    # response body saved to /home/vagrant/.swat/.cache/1797/prove/bEWDoksD59
    ok 2 - sleep for one second
    ok 3 - output match /status code:/
    ok 4 - 'status code: 200' match '200'
    ok 5 - output match /status text:/
    ok 6 - 'status text: OK' match 'OK'
    ok 7 - output match /action:/
    ok 8 - 'action: echo' match 'echo'
    1..8
    ok
    /home/vagrant/.swat/.cache/1797/prove/search_listings/00.GET.t ..
    ok 1 - GET http://api.nestoria.co.uk/api/ succeeded
    # response http headers saved to /home/vagrant/.swat/.cache/1797/prove/tQ6C0qU6to.hdr
    # response body saved to /home/vagrant/.swat/.cache/1797/prove/tQ6C0qU6to
    ok 2 - sleep for one second
    ok 3 - output match /status code:/
    ok 4 - 'status code: 200' match '200'
    ok 5 - output match /status text:/
    ok 6 - 'status text: OK' match 'OK'
    1..6
    ok
    All tests successful.
    Files=2, Tests=14, 14 wallclock secs ( 0.03 usr  0.01 sys +  0.12 cusr  0.03 csys =  0.19 CPU)
    Result: PASS
    

# see also

https://github.com/melezhik/swat

