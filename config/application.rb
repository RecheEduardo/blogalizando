require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlogORama
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    #config para fazer o factorybot funcionar
    config.after_initialize do
      Bullet.enable = false
    end

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # config.time_zone = 'America/Sao_Paulo' # Configuração para as queries
    config.active_record.default_timezone = :utc
    config.i18n.available_locales = [:en, :'pt-BR']
    config.i18n.default_locale = :'pt-BR'

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  end
end
