# HTTPStatus

A utility library provides a few helper functions and HTTP status codes.


# Installation

``` julia
Pkg.add("HTTPStatus")
```

# Docs

## Functions

- `is_information` - is the HTTP status code represent informational?
- `is_success` - is the HTTP status represent success?
- `is_redirect` - is the HTTP ststus code represent the redirect?
- `is_client_error` - is the HTTP status code represent the client-side error?
- `is_server_error` - is the HTTP status code represent the server error?

## Status code

- All the status code contains three parts separated by `hypen`.
- The first parts is always - `HTTP`.
- The second part is integer HTTP code like `200`.
- The third part is the description of the HTTP code like `OK`.
- A few examples: `HTTP_200_OK`, `HTTP_418_I_M_A_TEAPOT`.

# Usage

``` julia
import HTTPStatus

# some HTTP response code in the variable as status_code
if status_code == HTTP_200_OK:
    println("Upload complete")
```

# Run tests

1. Install the package as dev package.

``` julia
(@v1.6) pkg> dev HTTPStatus
...
(@v1.6) pkg> test HTTPStatus
...
     Testing Running tests...
Test Summary:  | Pass  Total
is_information |    2      2
Test Summary: | Pass  Total
is_success    |    4      4
Test Summary: | Pass  Total
is_redirect   |    4      4
Test Summary:   | Pass  Total
is_client_error |    4      4
Test Summary:   | Pass  Total
is_server_error |    4      4
Test Summary: | Pass  Total
codes         |    3      3
     Testing HTTPStatus tests passed
```
