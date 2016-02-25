module Brimir
  class Engine < ::Rails::Engine
    isolate_namespace Brimir
    engine_name 'brimir'

    config.devise_authentication_strategy = :database_authenticatable
    config.active_record.raise_in_transactional_callbacks = true

    config.i18n.default_locale = :en
    config.i18n.fallbacks = [:en]
  end
end

require 'devise'
require 'devise_ldap_authenticatable'
require 'omniauth-google-oauth2'
require 'cancancan'
require 'will_paginate'
require 'paperclip'
require 'font-awesome-rails'
require 'tinymce-rails'
require 'http_accept_language'
require 'rails-i18n'
require 'devise-i18n'
require 'timecop'
require 'select2-rails'
require 'jbuilder'
require 'fancybox2-rails'
require 'gravatar_image_tag'
require 'foundation_rails_helper'
require 'foundation-rails'
require 'jquery-rails'
require 'compass-rails'
require 'uglifier'
require 'coffee-rails'
require 'sass-rails'
