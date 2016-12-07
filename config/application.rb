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
    config.action_dispatch.default_headers = {
    	'X-Frame-Options' => 'ALLOW-FROM http://smolovcal.com'
    }

    SecureHeaders::Configuration.default do |config|
    	config.csp = {
    		frame_ancestors: %w(http://smolovcal.com)
    	}
  end
end
