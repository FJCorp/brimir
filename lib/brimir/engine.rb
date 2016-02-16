module Brimir
  class Brimir < ::Rails::Engine
    isolate_namespace Brimir

    config.devise_authentication_strategy = :database_authenticatable
    config.active_record.raise_in_transactional_callbacks = true

    config.i18n.default_locale = :en
    config.i18n.fallbacks = [:en]
  end
end

require 'devise'
