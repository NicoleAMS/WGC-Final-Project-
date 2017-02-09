require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BuddhaExhibition
  class Application < Rails::Application
 
    # 404 configure router as the exceptions app:
    config.exceptions_app = self.routes
  end
end
