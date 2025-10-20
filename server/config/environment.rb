# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Set database configuration from DATABASE_URL environment variable.
if ENV['DATABASE_URL']
  Rails.application.config.database_configuration = {
    'production' => {
      'url' => ENV['DATABASE_URL']
    }
  }
end
