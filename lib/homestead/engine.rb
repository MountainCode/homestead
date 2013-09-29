module Homestead
  class Engine < ::Rails::Engine
    isolate_namespace Homestead
    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end

    # http://pivotallabs.com/leave-your-migrations-in-your-rails-engines/
    # initializer :append_migrations do |app|
    #   unless app.root.to_s == root.to_s
    #     config.paths['db/migrate'].expanded.each do |expanded_path|
    #       # p expanded_path
    #       app.config.paths['db/migrate'] << expanded_path
    #     end
    #   end
    # end

    # initializer :append_seeds do |app|
    #   unless app.root.to_s == root.to_s
    #     app.config.paths['db/seeds.rb'] << config.paths['db/seeds.rb'].expanded[0]
    #  end
    # end
  end
end
