# Setting Up Rails Admin

Add the following to Gemfile

```ruby
gem 'devise', '~> 3.1.0'
gem 'rails_admin'
```

Edit db/seeds.rb

```ruby
User.first_or_create(email: 'admin@example.com', password: 'swordfish')
```

```bash
$ bundle install
$ rails g rails_admin:install
$ rake db:migrate
$ rake db:seed
$ rails s
```

Now visit http://localhost:3000/admin

Email: admin@example.com
Password: swordfish
