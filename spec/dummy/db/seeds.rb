User.create(email: 'admin@example.com', password: 'swordfish')

Homestead::Engine.load_seed

if Rails.env.development? || Rails.env.test?
  require './db/seeds/listings'
  require './db/seeds/agents'
  require './db/seeds/offices'
end
