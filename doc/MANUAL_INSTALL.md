### Installing Manually

Edit Gemfile and add

```ruby
gem 'paperclip', '~> 3.5.1'
gem 'ransack', '~> 1.0.0'
gem 'draper', '~> 1.2.1'
gem 'homestead', git: 'git@github.com:MountainCode/homestead.git'
```

Edit config/routes.rb

```ruby
mount Homestead::Engine => "/realestate"
```

```bash
$ bundle install
$ rake homestead:install:migrations
$ rake db:migrate
$ rails s
```

Now visit http://localhost:3000/realestate
