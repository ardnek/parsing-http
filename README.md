# Parsing HTTP Responses

When you make a request to a server, you get back a response which is essentially a text file in a predictable format.

Your mission is to create a class called HttpResponseParser (test-driven) that can parse these HTTP responses. Every HTTP response is setup in the same way:

* The first line contains the status code
* There is a blank line in between the list of headers and the body

Run the rspec test 'parse_response_spec.rb" in the spec directory.

Follow the error messages and inspect the individual tests to guide your development.

## Goal

To create a class / method to parse HTTP responses, and parse HTTP requests.

The request object should have methods for:

* path (string)
* verb (string)
* headers (returns a hash)

* body (string)

* querystring (string)

* params (hash that includes: parsed query string, parsed body)

* version

The response object:

* status (integer)
* headers (hash)
* body (string)
* http version


# Setup

* Fork
* Clone
* Open and edit with RubyMine
* Submit your repo's url
