<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [How to write app](#how-to-write-app)
  - [Validate user input](#validate-user-input)
  - [Split routes into small parts](#split-routes-into-small-parts)
- [How to write rake task](#how-to-write-rake-task)
- [How to write test with rspec](#how-to-write-test-with-rspec)
  - [Test public class methods](#test-public-class-methods)
  - [Test private class methods](#test-private-class-methods)
  - [Test API request](#test-api-request)
  - [WARNING: Using the `raise_error` matcher without providing a specific error or message risks false positives](#warning-using-the-raise_error-matcher-without-providing-a-specific-error-or-message-risks-false-positives)
  - [Using `any_instance` from rspec-mocks' old `:should` syntax without explicitly enabling the syntax is deprecated](#using-any_instance-from-rspec-mocks-old-should-syntax-without-explicitly-enabling-the-syntax-is-deprecated)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## How to write app

### Validate user input

### Split routes into small parts

## How to write rake task

## How to write test with rspec

What is the difference between `dscribe` and `context`? 

### Test public class methods

### Test private class methods

### Test API request

### WARNING: Using the `raise_error` matcher without providing a specific error or message risks false positives

- `rspec`

```
WARNING: Using the `raise_error` matcher without providing a specific error or message risks false positives, since `raise_error` will match when Ruby raises a `NoMethodError`, `NameError` or `ArgumentError`, potentially allowing the expectation to pass without even executing the method you are intending to call. Actual error raised was #<ActiveRecord::RecordInvalid: Validation failed: Content can't be only HTML tags>. Instead consider providing a specific error class or message. This message can be suppressed by setting: `RSpec::Expectations.configuration.on_potential_false_positives = :nothing`. Called from /path/to/hoge_spec.rb'.
```

```ruby
# before
raise_error

↓

# after
raise_error(Exception)
```

- [raise_error warning should include current error message](https://github.com/rspec/rspec-expectations/issues/822)


### Using `any_instance` from rspec-mocks' old `:should` syntax without explicitly enabling the syntax is deprecated

- `rspec`

```
Using `any_instance` from rspec-mocks' old `:should` syntax without explicitly enabling the syntax is deprecated. Use the new `:expect` syntax or explicitly enable `:should` instead. Called from /path/to/fuga_spec.rb:in'.
```

```
# memo
#any_instance and #stub are part of the old should syntax. The syntax you're looking for instead is
```

```ruby
# before
class.any_instance.stub(:method)

↓

# after
allow_any_instance_of(class).to receive(:method)
```



- [RSpec any_instance deprecation: how to fix it?](https://stackoverflow.com/questions/24595203/rspec-any-instance-deprecation-how-to-fix-it)
