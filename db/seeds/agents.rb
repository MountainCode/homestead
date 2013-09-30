def with_files(first_name, last_name)
  File.open("db/seeds/images/#{first_name}_#{last_name}.jpg", 'r') do |img|
    yield first_name, last_name, img
  end
end

module Homestead
  with_files('Chris', 'Kentfield') do |first_name, last_name, img|
    Agent.new(
      first_name: first_name,
      last_name: last_name,
      photo: img,
      listings: Listing.all
    ).save!
  end
end
