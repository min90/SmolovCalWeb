require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SmolovCal
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    SecureHeaders::Configuration.default do |config|
    	config.x_frame_options = 'ALLOW-FROM http://smolovcal.com'
    	config.csp = {
    		default_src: %w(https: 'self'),
    		frame_ancestors: %w('self' http://*.smolovcal.com https://quiet-shelf-52098.herokuapp.com)
    	}
    end
  end
end
