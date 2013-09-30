User.create(email: 'admin@example.com', password: 'swordfish')

require './db/seeds'

if Rails.env.development? || Rails.env.test?
  require './db/seeds/listings'
  require './db/seeds/agents'
  require './db/seeds/offices'
end
