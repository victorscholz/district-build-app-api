# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

set :database, "postgres://localhost/district_build_app_api"

run Rails.application
