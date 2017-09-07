# ruby on rails

## test

### stub_request

#### naming conventions 

<!-- TODO: write the reason -->

```ruby
# SEE: <specification url>
def stub_request_<namespace>_to_<describe what it will do>; end
```

For example with Gengo API:

```ruby
# SEE: http://developers.gengo.com/v2/api_methods/order/#id1
def stub_request_gengo_to_retrieve_jobs_by_id; end
```

