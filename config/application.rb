require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(:default, Rails.env)
module DesignaDefault
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :"pt-BR"
    config.i18n.load_path += Dir[Rails.root.join("app/locales/**/*.yml").to_s]
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

    config.assets.paths << Rails.root.join("vendor","assets","components")
  end
end
