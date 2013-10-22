module Homestead
  class InstallGenerator < Rails::Generators::Base
    def install
      mount_point = ask('Where do you want to mount homestead? ' +
                        'Press <enter> for [realestate]')
      mount_point = 'realestate' if mount_point.blank?
      gsub_file 'config/routes.rb',
                /^.\s+mount\s+Homestead::Engine\s+=>\s+['"].+?['"],\s+:as\s+=>\s+['"].*?['"]\s+\n/,
                ''
      route("mount Homestead::Engine => '/#{mount_point}', :as => 'homestead'\n")

      append_file 'Gemfile', "\n", force: true
      gem 'paperclip', '~> 3.5.1'
      gem 'ransack', '~> 1.0.0'
      gem 'draper', '~> 1.2.1'

      rake 'homestead:install:migrations'
      rake 'db:migrate'
      append_file 'db/seeds.rb', "Homestead::Engine.load_seed"
      Homestead::Engine.load_seed

      say "\nInstall complete.  If there were no errors, run 'rails -s' and " +
          "visit http://localhost:3000/#{mount_point} in your browser.\n",
          :blue
      say "Homestead does not have an admin interface. If you need one, the " +
          "rails_admin gem works well to get started."
    end
  end
end
