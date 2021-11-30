# frozen_string_literal: true

namespace :test do
  desc "Setup tests environment"
  task setup: :environment do
    system("rake db:drop RAILS_ENV=test")
    system("rake db:create RAILS_ENV=test")
    system("bin/rails db:environment:set RAILS_ENV=test && rake db:schema:load")
    system("bin/rails db:environment:set RAILS_ENV=development")
  end
end
