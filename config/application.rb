require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)
module CloneInsta
  class Application < Rails::Application
    config.time_zone = 'West Central Africa'
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :en
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.generators do |g|
      # La description dans ces deux lignes crée un paramètre qui n'est pas généré automatiquement.
      g.assets false
      g.helper false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end