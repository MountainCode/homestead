# Homestead

By [Mountain Code](http://www.mtncode.com)

*This project is in early alpha development*

Homestead is a Rails engine for real estate websites.  It uses a mobile first
website layout build on [Bootstrap 3](http://getbootstrap.com)

## Using

```bash
$ rails new my_website
```

Edit Gemfile and add

```ruby
gem 'paperclip'
gem 'devise'
gem 'rails_admin'
gem 'ransack', git: 'https://github.com/ernie/ransack.git', branch: 'rails-4'
gem 'draper'
gem 'homestead', git: 'git@github.com:MountainCode/homestead.git'
```

Edit config/routes.rb

```ruby
mount Homestead::Engine => "/realestate"
```

Edit db/seeds.rb

```ruby
User.create(email: 'admin@example.com', password: 'swordfish')
Homestead::Engine.load_seed
```

```bash
$ bundle install
$ rake homestead:install:migrations
$ rake db:migrate
$ rails g rails_admin:install
$ rake db:migrate
$ rake db:seed
$ rails s

Add the following to application_controller.rb

```ruby
helper_method :property_type_options

def property_type_options
  a = Homestead::PropertyType.all.map do |t|
    [t.name, t.id]
  end
  [['Property type', '']].concat(a)
end
```

Now visit http://localhost:3000/admin

Email: admin@example.com
Password: swordfish

## Developing

```bash
$ git checkout git@github.com:MountainCode/homestead.git
$ bundle install
$ rake app:db:migrate
$ rake app:db:seed
$ cd spec/dummy
$ rails s
```

To learn more about design patterns used in this project see the
[architecture](doc/architecture.md) page.

## Running Tests

Run unit tests with

```bash
$ rake app:spec
```

Run feature tests with

```bash
$ rake app:cucumber
```

Migrations and seeds will be run before tests.
