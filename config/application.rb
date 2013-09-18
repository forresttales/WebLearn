require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Weblearn
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    
    #config.assets.precompile += ['easyui.css','jquery.easyui.min.js','jquery-1.8.0.min.js']


    #config.assets.precompile += ['3_column.css', 'featured_slide.css', 'forms.css', 'gallery.css', 'homepage.css', 'layout.css', 'navi.css', 'portfolio.css', 'prettyPhoto.css', 'tables.css']
 
    #config.assets.precompile += ['jquery.easing.1.3.js', 'jquery.galleryview.2.1.1.min.js', 'jquery.galleryview.setup.js', 'jquery.timers.1.2.js', 'jquery-1.4.1.min.js', 'jquery-prettyPhoto.js', 'jquery-ui-1.8.12.custom.min.js']

    #config.assets.precompile += ['custom.css']
    
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    
    #config.assets.initialize_on_precompile = false    
    #config.assets.enabled = false
    
    #config.sass.load_paths << File.expand_path('../../lib/assets/stylesheets/')
    #config.sass.load_paths << File.expand_path('../../vendor/assets/stylesheets/')    
    
    #config.action_view.JavaScript_expansions[:defaults] = %w(jquery rails application)     
    
  end
end
