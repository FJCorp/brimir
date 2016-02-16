$:.push File.expand_path("../lib", __FILE__)

require 'brimir/version'

Gem::Specification.new do |s|
  s.name        = "brimir"
  s.version     = Brimir::VERSION
  s.authors     = ["Dmitry Sharikov"]
  s.email       = ["sirgreatest@gmail.com"]
  s.homepage    = "http://getbrimir.com"
  s.summary     = "Email helpdesk built using Ruby on Rails and Zurb Foundation"
  s.description = "Brimir is a simple helpdesk system that can be used to handle support requests via incoming email. Brimir is currently used in production at Ivaldi."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", '>= 4.2.0'
  s.add_dependency "devise", '~> 0'
  s.add_dependency "devise_ldap_authenticatable", '~> 0'
  s.add_dependency "omniauth-google-oauth2", '~> 0'
  s.add_dependency "cancancan", '>= 1.13.1'
  s.add_dependency "paperclip", '>= 4.3.5'
  s.add_dependency "will_paginate", '>= 3.1.0'
  s.add_dependency "font-awesome-rails", "~> 4.0"
  s.add_dependency "tinymce-rails", '>= 4.1.6'
  s.add_dependency "http_accept_language", '>= 2.0.5'
  s.add_dependency "rails-i18n", '~> 0'
  s.add_dependency "devise-i18n", '~> 0'
  s.add_dependency "timecop", '~> 0'
  s.add_dependency "select2-rails", '~> 0'
  s.add_dependency "jbuilder", "~> 2.2"
  s.add_dependency "fancybox2-rails", "~> 0.2.8"
  s.add_dependency "gravatar_image_tag", '~> 0'
  s.add_dependency "foundation_rails_helper", '~> 0'
  s.add_dependency "foundation-rails", '>= 5.5.0'
  s.add_dependency "jquery-rails", '>= 4.1.0'
  s.add_dependency "compass-rails", '>= 2.0.0'
  s.add_dependency "uglifier", '>= 2.7.2'
  s.add_dependency "coffee-rails", '>= 4.1.0'
  s.add_dependency "sass-rails", '>= 5.0.0'

end
