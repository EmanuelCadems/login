require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

Bundler.require(:default, Rails.env)

module Login
  class Application < Rails::Application
    config.generators do |g|
      g.fixture_replacement :factory_girl
    end

    config.assets.initialize_on_precompile = false
  end
end
