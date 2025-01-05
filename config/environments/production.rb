require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Code is not reloaded between requests.
  config.enable_reloading = false

  # Eager load code on boot for better performance and memory savings.
  config.eager_load = true

  # Full error reports are disabled.
  config.consider_all_requests_local = false

  # Enable caching in controllers and fragment caching in views.
  config.action_controller.perform_caching = true

  # Cache assets for far-future expiry with digest stamps.
  config.public_file_server.headers = { "Cache-Control" => "public, max-age=#{1.year.to_i}" }

  # Use local storage for Active Storage.
  config.active_storage.service = :local

  # Enforce SSL and secure cookies.
  config.assume_ssl = true
  config.force_ssl = true

  # Log to STDOUT with request ID tagging.
  config.log_tags = [:request_id]
  config.logger = ActiveSupport::TaggedLogging.new(Logger.new($stdout))

  # Set log level to value from environment or default to 'info'.
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # Silence logs for healthcheck path.
  config.silence_healthcheck_path = "/up"

  # Suppress deprecation warnings.
  config.active_support.report_deprecations = false

  # Use a more robust cache store.
  config.cache_store = :solid_cache_store

  # EMAIL
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "yourdomain.com",
    user_name: "blogalizandoapp@gmail.com", # Substitua pelo seu e-mail
    password: "ttmdgaygqhmhjsly",           # Substitua pela sua senha ou chave de aplicativo
    authentication: "plain",
    enable_starttls_auto: true
  }

  config.action_mailer.default_url_options = { host: "yourdomain.com", protocol: "https" }

  # Fallback to default locale for I18n.
  config.i18n.fallbacks = true

  # Avoid dumping the schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # Use only :id for attribute inspection in production.
  config.active_record.attributes_for_inspect = [:id]

  # Set the secret key base from environment variables.
  config.secret_key_base = ENV['SECRET_KEY_BASE']
end