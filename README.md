# Homestead

By [Mountain Code](http://www.mtncode.com)

*This project is in early alpha development*

Homestead is a Rails engine for real estate websites.  It uses a mobile first
website layout build on [Bootstrap 3](http://getbootstrap.com)

## Using

Add to Gemfile then run ```bundle install```.

```ruby
gem 'homestead', git: 'git@github.com:MountainCode/homestead.git'
```

You can run ```rails g homestead:install``` which will attempt to automatically
install Homestead for you.  If you have problems, see the 
[manual install instructions](doc/MANUAL_INSTALL.md).

For an admin interface, see [Setting Up Rails Admin](doc/RAILS_ADMIN.md).

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
