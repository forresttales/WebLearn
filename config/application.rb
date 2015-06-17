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

    Dir.glob("#{Rails.root}/app/assets/images/**/").each do |path|
      config.assets.paths << path
    end

    # config.action_controller.asset_host = 'http://mycdn'
    # config.assets.prefix = '/assets'

    # config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    # config.assets.paths << Rails.root.join('app', 'assets', 'images', 'frontpage_link_images')


    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif *.svg *.ico *.eot *.ttf *woff)

    # config.assets.precompile += ['custom_form.css.scss', 'custom_nav.css.scss', 'custom_page_layout.css.scss', 'custom_profile.css.scss', 'custom.css.scss', 'event_news.css.scss', 'gathering.css.scss', 'landing-style.css.scss', 'newindex.css.scss', 'reg_contact.css.scss', 'schedule.css.scss', 'slideshow.css.scss', 'survey.css.scss']
    
    #config.assets.paths += Dir["#{Rails.root}/vendor/asset-libs/*"].sort_by { |dir| -dir.size }
    
    #config.assets.initialize_on_precompile = false    
    config.assets.enabled = true
    config.assets.precompile += [
                                  'jqModal.js', 
                                  'jquery.validate.js', 
                                  'jquery-dropdown-dot.js',
                                  'reg_events_new.js', 
                                  'reg_communs_new.js',
                                  'reg_letters_new.js',
                                  'special_reports.js',       
                                  'papers.js',                           
                                  'dot.js',
                                  'jquery.colorbox.js',
                                  'jquery.elastic.source.js',
                                  'jquery.galleryview.2.1.1.min.js',
                                  'jquery.tabbable.min.js',
                                  'jquery-prettyPhoto.js',
                                  'jquery-002.js',
                                  'jquery-2.1.2.js',
                                  'jquery.easing.1.3.js'
                                  # 'global.js'                                  
                                ]

    # config.assets.precompile += [
                                  # 'contacts_new.css'
                                # ]

    #config.assets.paths << "#{Rails.root}/vendor/assets/javascripts"
    
    #config.sass.load_paths << File.expand_path('../../lib/assets/stylesheets/')
    #config.assets.load_paths << File.expand_path('../../vendor/assets-libs/')    
    
    #config.action_view.JavaScript_expansions[:defaults] = %w(jquery rails application)     

    # http://fonts.googleapis.com/css?family=Quicksand|Actor
    # config.action_dispatch.default_headers.merge!({
      # 'Access-Control-Allow-Origin' => '*',
      # 'Access-Control-Request-Method' => '*'
    # })
    
    config.action_dispatch.default_headers.clear
    
    
  end
end
