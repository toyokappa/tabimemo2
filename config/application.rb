require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Bestcode2
  class Application < Rails::Application
    config.load_defaults 6.0

    config.generators do |g|
      g.helper false
      g.stylesheets false
      g.template_engine :slim
      g.test_framework :rspec,
                       controller_specs: false,
                       helper_specs: false,
                       routing_specs: false
    end

    config.active_record.default_timezone = :local
    config.time_zone = "Tokyo"
  end
end
