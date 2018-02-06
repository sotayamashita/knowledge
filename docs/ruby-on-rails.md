[issue]: https://github.com/sotayamashita/knowledge/issues/new?labels=ruby-on-rails

# Ruby on Rails

Ruby on Rails best practice for my experience. This will be changed or updated. I am keep learning and try to improve my code. If you have a lot of expericen of it and you find something wrong, please [create a issue][issue] to fix my misunderstanding. Thanks :smile:

<br />

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Directory Structure](#directory-structure)
- [References](#references)
- [init](#init)
- [Gemfile](#gemfile)
- [test](#test)
  - [stub_request](#stub_request)
    - [naming conventions](#naming-conventions)
- [tips](#tips)
  - [great rake task](#great-rake-task)
  - [split routes for maintain](#split-routes-for-maintain)
  - [admin page](#admin-page)
- [references](#references)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Directory Structure

```
tree -I 'vendor|node_modules|tmp' --dirsfirst
.
├── app
│   ├── assets
│   ├── helpers
│   ├── mailers
│   ├── models
│   ├── repositories
│   ├── presenters
│   ├── services
│   ├── controllers
│   ├── views
│   └── workers
├── bin
├── config
├── config
│   ├── environments
│   ├── initializers
│   ├── routes.rb
│   └── routes
├── db
│   └── seeds.rb
├── lib
│   ├── assets
│   └── tasks
│       └── <model>  # e.g.) users
│          ├── create.rake
│          └── update.rake
├── spec
│   ├── rails_helper.rb
│   ├── spec_helper.rb
│   ├── models
│   │   └── user_spec.rb
│   ├── repositories
│   ├── presenters
│   ├── services
│   ├── controllers
│   │   └── users_controller_spec.rb
│   ├── routing
│   │   └── users_routing_sepc.rb
│   ├── requests
│   └── workers
└── public
```

## Learn Ruby on Rails

Ruby on Rails is very popular but lot of versions so becaful when you google.

- Getting Started
- Real world :wild:
  - https://gitlab.com/gitlab-org/gitlab-ce
  - https://github.com/discourse/discourse

## How to find stable version and use

1. Go to https://github.com/rails/rails
1. Find `x.x-stable` on branch list
1. Change the branch you want to use
1. Find `RAILS_VERSION` and version is wrriten :100:

## Which stable version should I use?

You need keep mind ... TODO

1. Security updates
1. Functionality since Rails 5

I use ... TODO because TODO

## Initialize

TODO:

```
$ bundle init
Writing new Gemfile to /path/to/Gemfile
```

`$ vim Gemfile`: 

```diff
# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

- # gem "rails"
+ gem "rails"
```

TODO:

```bash
$ bundle exec rails new . -d postgresql --skip-coffee -B -T --force
```

## Tips for developemnt service

### webhook

- Stop using create payload which has a `action` key. TODO: Write reason

  ```json
  # ref https://developer.github.com/v3/activity/events/types/#marketplacepurchaseevent
  {
    "action": "changed",
    "effective_date": "2017-04-06T02:01:16Z",
  ```


## References

- Directory Structure
  - [Everything You Always Wanted to Know About Writing Good Rake Tasks * But Were Afraid to Ask](https://edelpero.svbtle.com/everything-you-always-wanted-to-know-about-writing-good-rake-tasks-but-were-afraid-to-ask)
  - [Directory Structure](https://relishapp.com/rspec/rspec-rails/docs/directory-structure)
  - [Refactoring Fat Models, Controllers, and Views Example](https://github.com/shakacode/fat-code-refactoring-techniques)



-----------


## init

I make sure to keep global be clean.

```
$ mkdir <project nmae>; cd <project name>

$ bunlde init
Writing new Gemfile to /Users/sota/Desktop/test/Gemfile

$ vim Gemfile
gem "rails"

$ bunlde install --path vendor/bundle
Resolving dependencies...
Bundle complete! n Gemfile dependencies, n gem now installed.
Bundled gems are installed into ./vendor/bundle.

$ bundle exec rails new .

$ bundle exec rails s
```

## Gemfile

- [ref](https://github.com/sotayamashita/knowledge/blob/master/frameworks/Gemfile)

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

## tips

### great rake task

```ruby
namespace <TODO namespace> do
  desc "TODO write descritpion in one line"
  task <TODO taks name>: :environment do |t, args|
    # To check
    STDOUT.puts "Are you sure? (y/n)"
    input = STDIN.gets.strip.downcase

    if input == 'y'
      # TODO: write some task
    else
      STDOUT.puts "So sorry for the confusion"
    end
  end
end
```

```
.
└── lib
    └── tasks
        ├── update
        │   ├── user.rb
        │   └── plan.rb
        ├── create
        │   ├── user.rb
        │   └── plan.rb
        └── lint
            └── rubocop.rb
```

- https://edelpero.svbtle.com/everything-you-always-wanted-to-know-about-writing-good-rake-tasks-but-were-afraid-to-ask

### split routes for maintain

```
.
└── config
    ├── initializers
    │   └── routing_draw.rb
    ├── routes
    │   ├── admin.rb
    │   └── hoge.rb
    └── routes.rb
```

```ruby
# config/initializers/routing_draw.rb
# Adds draw method into Rails routing
# It allows us to keep routing divided into files
class ActionDispatch::Routing::Mapper
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
end
```

```ruby
# config/routes.rb
Rails.application.routes.draw do
  draw :admin
  draw :hoge

  root to: "home#index"
end
```

```ruby
# config/routes/admin.rb
namespace :admin do; end
```

### admin page

```
.
└── app
    └── controllers
        └── admin
            ├── application_controller.rb
            └── hoge_controller.rb
```

```ruby
# app/controllers/admin/application_controller.rb
# frozen_string_literal: true
class Admin::ApplicationController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"

  def authenticate_admin!
    render_404 unless current_user.admin?
  end
end
```

```ruby
# app/controllers/admin/users_controller.rb
class Admin::HogeController < Admin::ApplicationController
  def index; end
end
```

## references

- [GitLab Community Edition](https://gitlab.com/gitlab-org/gitlab-ce)  -->
