require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
# require "sprockets/railtie"
require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DistrictBuildAppApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    # if Rails.env == 'production'
    #   require 'rack/allowed_hosts'
    #   config.middleware.use Rack::AllowedHosts do
  
    #     # Allow root domain:
    #     allow 'https://frozen-dusk-67940.herokuapp.com/'
  
    #     # Allow our subdomains
    #     allow 'https://frozen-dusk-67940.herokuapp.com/buildings/', 'https://frozen-dusk-67940.herokuapp.com/visit_lists/'
  
    #     # Allow any subdomain with a wildcard
    #     allow '*https://frozen-dusk-67940.herokuapp.com/'
        
    #     # Include subdomain from a configuration variable:
    #     # ENV['ALLOWED_HOSTS'] can be a string or an array of strings.
    #     allow ENV['ALLOWED_HOSTS']
    #   end
    # end
  end
end
