
require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module XD276project
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

	# Include the authenticity token in remote forms.
    config.action_view.embed_authenticity_token_in_remote_forms = true
    #Rails 4 to serve the assets
    config.serve_static_assets = true

  end
end
