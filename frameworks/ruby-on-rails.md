# ruby on rails

This is a best practice of Ruby on Rails for me. I am not a specialist of it and I am keep learning it so this docs will be updated and changed. If you have a lot of expericen of it and you find something wrong, please create a issue to fix my misunderstanding. Thanks

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

