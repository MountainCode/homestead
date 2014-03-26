# Setting Up Rails Admin

Add the following to Gemfile

```ruby
gem 'devise', '~> 3.1.0'
gem 'rails_admin'
```

Edit db/seeds.rb

```bash
$ bundle install
$ rails g rails_admin:install
$ rake db:migrate
$ rails s
```

Now visit http://localhost:3000/admin
