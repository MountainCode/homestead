# Homestead

By [Mountain Code](http://www.mtncode.com)

*This project is in early alpha development*

Homestead is a Rails engine for real estate websites.  It uses a mobile first
website layout build on [Bootstrap 3](http://getbootstrap.com)

## Developing

```bash
$ git checkout ...
$ bundle install
$ rake app:db:migrate
$ rake app:db:seed
$ cd spec/dummy
$ rails s
```

## Running Tests

```bash
$ rake app:db:migrate RAILS_ENV=test
$ rake app:db:seed RAILS_ENV=test
$ rspec
```
