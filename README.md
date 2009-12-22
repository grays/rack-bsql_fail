# Rack::BSQLFail #

Familiar with this `[expletive]`?

> Possible blind sql injection on http://example.com/search?query= wp --bsql
"http://example.com/search?query=" "http://example.com/search?query=+and+1%3D1"
style="display: none;"> "http://example.com/search?query=+and+1%3D0" cat <<EOF
> bsql.sh curl -L "http://example.com/search?query=+and+1%3D1"> a curl -L
"http://example.com/search?query=+and+1%3D0"> b diff a b EOF sh bsql.sh
This website may have other injection related vulnerabilities. [More]

*REALLY*, you're gonna diff the response body of two requests, and cry
'SQL INJECTION!' if there are any differences? Are you `[expletive]` kidding
me? Rail's [request forgery][CSRF] protection alone is enough to fail this test, even
if the two request URIs being compared are identical. 

[Security Metrics][] uses a flawed method to test for blind SQL injections, this
middleware gives a dummy response to that test.

[Security Metrics]: https://www.securitymetrics.com/
[CSRF]: http://en.wikipedia.org/wiki/Cross-site_request_forgery

## Usage ##

    require 'rack/bsql_fail'

    use Rack::BSQLFail, '/path/being/tested', 'another/path/being/tested'

### Configuring in a Rails App ###

    config.gem 'rack-bsql_fail', :lib => 'rack/bsql_fail'
    config.middleware.use 'Rack::BSQLFail', '/search'

## Note on Patches/Pull Requests ##
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but
  bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright ##

Copyright (c) 2009 Jason L Perry. See LICENSE for details.
