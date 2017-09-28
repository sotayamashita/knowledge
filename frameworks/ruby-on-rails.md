[issue]: https://github.com/sotayamashita/knowledge/issues/new?labels=ruby-on-rails

# ruby on rails

This is a Ruby on Rails best practice for me. This will be changed or updated because I am keep learning and try to improve my code. If you have a lot of expericen of it and you find something wrong, please [create a issue][issue] to fix my misunderstanding. Thanks

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

### split routes

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

- [GitLab Community Edition](https://gitlab.com/gitlab-org/gitlab-ce) 
