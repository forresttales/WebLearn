Weblearn::Application.routes.draw do
   
   
  root to: 'static_pages#index'

  match '/', to: 'static_pages#index', via: 'get'
  match '/Privacy', to: 'static_pages#privacy', via: 'get'
  match '/About', to: 'static_pages#about', via: 'get'
  match '/KnowStory', to: 'static_pages#knowstory', via: 'get'
  match '/Events', to: 'eventpages#index', via: 'get'
  match '/Papers', to: 'static_pages#papers', via: 'get'
  match '/Advertise', to: 'static_pages#advertise', via: 'get'  
  match '/Sponsor', to: 'static_pages#sponsor', via: 'get'

  match '/events', to: 'eventpages#index', via: 'get'
  match '/index', to: 'static_pages#index', via: 'get'
  match '/sponsor', to: 'static_pages#sponsor', via: 'get'
  match '/papers', to: 'static_pages#papers', via: 'get'
  match '/edmatchup', to: 'static_pages#edmatchup', via: 'get'
  match '/privacy', to: 'static_pages#privacy', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'

  match '/fonts', to: 'static_pages#fonts', via: 'get'

  match '/test', to: 'tests#index', via: 'get'
  match '/gallery', to: 'tests#gallery', via: 'get'
  match '/overlay', to: 'tests#overlay', via: 'get'

  # match '/Events', to: 'events#index', via: 'get'

  

   
  # get "landings/index"
  get "landings/show"
 
  post "landings/secretlanding"

  resources :landings do
    member do
      post :secretlanding
    end
  end

  get "landings/new"
  match "Subscribe" => "landings#new", via: ['get']
  resources :landings   



  get "tests/list"
  get "tests/index"

  # aliases
  get "pages/events_agenda"

  match '/Columbia-1', to: 'pages#event1a', via: 'get'
  
  
  
  
  # match '/Schedule', to: 'pages#events_agenda', via: ['get']
  match '/EventRegistration', to: 'reg_events#new', via: ['get']

  # get "reg_events/index"
  # match 'RegisterEvents', to: 'reg_events#index', via: ['get']
  match '/RegisterEvents', to: 'events#index', via: ['get']


  match '/Signup', to: 'users#new', via: 'get'

  resources :sessions, only: [:new, :create, :destroy]

  match '/Signin', to: 'sessions#new', via: 'get'
  match '/Signout', to: 'sessions#destroy', via: 'get'



  # match '/Students/home', to: 'students#home', via: 'get'


  match '/users/show', to: 'users#show', via: 'get'


  match '/institutes/home', to: 'institutes#index', via: 'get'
  match '/publishers/home', to: 'publishers#index', via: 'get'
  match '/recruiters/home', to: 'recruiters#index', via: 'get'
  match '/students/home', to: 'students#index', via: 'get'
  match '/teachers/home', to: 'teachers#index', via: 'get'


  match '/ContactUs', to: 'contacts#new', via: 'get'
  match '/LetterRegistration', to: 'reg_letters#new', via: 'get'
  match '/CommunityRegistration', to: 'reg_communs#new', via: 'get'
  match '/SeminarRegistration', to: 'reg_seminars#new', via: ['get']





  resources :users
  resources :students
  resources :teachers
  resources :institutes
  resources :recruiters

  resources :contacts
  resources :edmatchups
  resources :reg_letters
  resources :reg_events
  resources :reg_communs
  resources :reg_seminars

  # get "archives/index"
  # get "archives/new"
  get "archives/show"  
  # match '/:id', to: 'archives#show', via: 'get'
  resources :archives
  #match ':controller(/:action(/:id(.:format)))'




  match '/EventNews', to: 'eventnews#show', via: 'get'
  match '/Event-News/Columbia-South-Carolina-March-5', to: 'eventnews#event_1_photos', via: 'get'
  match '/Event-News/California-Fresno-March-17', to: 'eventnews#event_2_photos', via: 'get'

  
  
  get "test/basic"
  
  get "static_pages/events_inter"
  get "static_pages/test"
  get "static_pages/fonts"
  get "static_pages/index_test"
  get "static_pages/buttons"

  
  
  
  # get "eventpages/index"
  resources :eventpages
  
  # get "event1pages/index"
  match '/Schedule', to: 'event1pages#index', via: 'get'
  resources :event1pages

  # get "event2pages/index"
  match '/SpecialGathering', to: 'event2pages#index', via: 'get'  
  resources :event2pages

  match '/InternetSeminars', to: 'event3pages#index', via: 'get'  
  resources :event3pages
  
  
  
  
  
  # # publishers  
#   
  # #get 'publishers/index'
  # match "/Publishers" => "publishers#index", via: 'get'  
  # match '/PublishersUpload', to: 'publishers#upload', via: 'post'
  # match '/PublishersNew', to: 'publishers#new', via: 'get'
  # match "/PublishersEdit" => "publishers#edit", via: 'post'
  # match "/PublishersUpdate" => "publishers#update", via: 'post'
# 
  # # match "/Publishers/:id/edit" => "publishers#edit", via: 'post'
  # # match "/publishers/:id" => "publishers#update", via: 'post'
#   
  # resources :publishers do
    # collection do
      # post :settings
    # end
  # end
# 
  # resources :publishers
# 
#   
  # #get "publisher_images/index"
  # get "publisher_images/show"
  # match '/PublisherImages', to: 'publisher_images#index', via: 'get'
  # match '/publisher_images/upload', to: 'publisher_images#upload', via: 'post'
  # match '/PublisherNewImage', to: 'publisher_images#new', via: 'get'
  # match "/publisher_images/:id/edit" => "publisher_images#edit", via: 'post'
  # match "/publisher_images/:id" => "publisher_images#update", via: 'get'
# 
  # resources :publisher_images do
    # collection { post :set_primary }
  # end
# 
  # resources :publisher_images
# 
# 
# 
  # # get "publisher_profiles/index"
  # get "publisher_profiles/show"
  # match '/PublisherProfiles', to: 'publisher_profiles#index', via: 'get'
  # match '/publisher_profiles/upload', to: 'publisher_profiles#upload', via: 'post'
  # match '/publisher_profiles/new', to: 'publisher_profiles#new', via: 'get'
  # match "/publisher_profiles/:id/edit" => "publisher_profiles#edit", via: 'post'
  # match "/publisher_profiles/:id" => "publisher_profiles#update", via: 'get'
# 
  # resources :publisher_profiles
# 
# 
# 
  # # get "publisher_settings/index"
  # get "publisher_settings/show"
  # match '/PublisherSettings', to: 'publisher_settings#index', via: 'get'
  # match '/publisher_settings/upload', to: 'publisher_settings#upload', via: 'post'
  # match '/publisher_settings/new', to: 'publisher_settings#new', via: 'get'
  # match "/publisher_settings/:id/edit" => "publisher_settings#edit", via: 'post'
  # match "/publisher_settings/:id" => "publisher_settings#update", via: 'get'
# 
  # resources :publisher_settings
# 
# 
# 
  # # get "publisher_products/index"
  # get "publisher_products/show"
  # match '/PublisherProducts', to: 'publisher_products#index', via: 'get'
  # match '/publisher_products/upload', to: 'publisher_products#upload', via: 'post'
  # match '/PublisherAddProduct', to: 'publisher_products#new', via: 'get'
  # match "/publisher_products/:id/edit" => "publisher_products#edit", via: 'post'
  # match "/publisher_products/:id" => "publisher_products#update", via: 'get'
# 
  # resources :publisher_products
# 
# 
# 
# 
  # get "publisher_product_descriptions/show"
  # match '/PublisherProductDescription', to: 'publisher_product_descriptions#index', via: 'get'
  # match '/publisher_product_descriptions/upload', to: 'publisher_product_descriptions#upload', via: 'post'
  # match '/PublisherAddProductInformation', to: 'publisher_product_descriptions#new', via: 'get'
  # match "/publisher_product_descriptions/:id/edit" => "publisher_product_descriptions#edit", via: 'post'
  # match "/publisher_product_descriptions/:id" => "publisher_product_descriptions#update", via: 'post'
# 
  # resources :publisher_product_descriptions
# 
# 
# 
  # #get "publisher_images/index"
  # get "publisher_product_logos/show"
  # match '/PublisherLogos/:id', to: 'publisher_product_logos#index', via: 'get'
  # match '/publisher_product_logos/upload', to: 'publisher_product_logos#upload', via: 'post'
  # match '/PublisherNewLogo', to: 'publisher_product_logos#new', via: 'get'
  # match "/publisher_product_logos/:id/edit" => "publisher_product_logos#edit", via: 'post'
  # match "/publisher_product_logos/:id" => "publisher_product_logos#update", via: 'get'
# 
  # # resources :publisher_product_logos do
    # # collection { post :set_primary }
  # # end
# 
  # resources :publisher_product_logos
# 
# 
# 
  # #get "publisher_images/index"
  # get "publisher_product_metadatatags/show"
  # match '/PublisherMetadata/:id', to: 'publisher_product_metadatatags#index', via: 'get'
  # match '/publisher_product_metadatatags/upload', to: 'publisher_product_metadatatags#upload', via: 'post'
  # match '/PublisherNewMetadata', to: 'publisher_product_metadatatags#new', via: 'get'
  # match "/publisher_product_metadatatags/:id/edit" => "publisher_product_metadatatags#edit", via: 'post'
  # match "/publisher_product_metadatatags/:id" => "publisher_product_metadatatags#update", via: 'post'
# 
  # # resources :publisher_product_metadatatags do
    # # collection { post :set_primary }
  # # end
# 
  # resources :publisher_product_metadatatags
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
  # get "image_institutes/index"
  # get "image_institutes/show"
  # match '/image_institutes/upload', to: 'image_institutes#upload', via: 'post'
  # match '/image_institutes/new', to: 'image_institutes#new', via: 'get'
  # match "/image_institutes/:id/edit" => "image_institutes#edit", via: 'post'
  # match "/image_institutes/:id" => "image_institutes#update", via: 'get'
# 
  # resources :image_institutes do
    # collection { post :set_primary }
  # end
# 
  # resources :image_institutes
#   
#   
#   
#   
#   
#   
#   
  # # institutes
#   
  # #get 'institutes/index'
  # match "/Institutes" => "institutes#index", via: 'get'  
  # match '/InstitutesUpload', to: 'institutes#upload', via: 'post'
  # match '/InstitutesNew', to: 'institutes#new', via: 'get'
  # match "/InstitutesEdit" => "institutes#edit", via: 'post'
  # match "/InstitutesUpdate" => "institutes#update", via: 'post'
# 
  # # match "/Institutes/:id/edit" => "institutes#edit", via: 'post'
  # # match "/institutes/:id" => "institutes#update", via: 'post'
#   
  # resources :institutes do
    # collection do
      # post :settings
    # end
  # end
# 
  # resources :institutes
# 
#   
  # #get "institute_images/index"
  # get "institute_images/show"
  # match '/InstituteImages', to: 'institute_images#index', via: 'get'
  # match '/institute_images/upload', to: 'institute_images#upload', via: 'post'
  # match '/InstituteNewImage', to: 'institute_images#new', via: 'get'
  # match "/institute_images/:id/edit" => "institute_images#edit", via: 'post'
  # match "/institute_images/:id" => "institute_images#update", via: 'get'
# 
  # resources :institute_images do
    # collection { post :set_primary }
  # end
# 
  # resources :institute_images
# 
# 
# 
  # # get "institute_profiles/index"
  # get "institute_profiles/show"
  # match '/InstituteProfiles', to: 'institute_profiles#index', via: 'get'
  # match '/institute_profiles/upload', to: 'institute_profiles#upload', via: 'post'
  # match '/institute_profiles/new', to: 'institute_profiles#new', via: 'get'
  # match "/institute_profiles/:id/edit" => "institute_profiles#edit", via: 'post'
  # match "/institute_profiles/:id" => "institute_profiles#update", via: 'get'
# 
  # resources :institute_profiles
# 
# 
# 
  # # get "institute_settings/index"
  # get "institute_settings/show"
  # match '/InstituteSettings', to: 'institute_settings#index', via: 'get'
  # match '/institute_settings/upload', to: 'institute_settings#upload', via: 'post'
  # match '/institute_settings/new', to: 'institute_settings#new', via: 'get'
  # match "/institute_settings/:id/edit" => "institute_settings#edit", via: 'post'
  # match "/institute_settings/:id" => "institute_settings#update", via: 'get'
# 
  # resources :institute_settings
# 
# 
# 
  # # get "institute_queries/index"
  # # get "institute_queries/show"
  # match '/InstituteQuery/:id', to: 'institute_queries#show', via: 'get'
  # match '/InstituteQueries', to: 'institute_queries#index', via: 'get'
  # match '/institute_queries/upload', to: 'institute_queries#upload', via: 'post'
  # match '/InstituteAddQuery', to: 'institute_queries#new', via: 'get'
  # match "/institute_queries/:id/edit" => "institute_queries#edit", via: 'post'
  # match "/institute_queries/:id" => "institute_queries#update", via: 'post'
# 
  # resources :institute_queries do
    # member do
      # post :execute
    # end
  # end
# 
# 
  # resources :institute_queries
# 
# 
# 
# 
  # #get "institute_query_results/show"
  # match '/InstituteQueryResult/:id', to: 'institute_query_results#show', via: 'get'  
  # match '/InstituteQueryResults/:id', to: 'institute_query_results#index', via: 'get'
  # match '/institute_query_results/upload', to: 'institute_query_results#upload', via: 'post'
  # match '/InstituteAddQueryDetails', to: 'institute_query_results#new', via: 'get'
  # match "/institute_query_results/:id/edit" => "institute_query_results#edit", via: 'post'
  # match "/institute_query_results/:id" => "institute_query_results#update", via: 'post'
# 
  # resources :institute_query_results do
    # member do
      # post :execute
    # end
  # end
# 
  # resources :institute_query_results

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  get "tablets/index"
  get "tablets/show"
  match '/tablets/upload', to: 'tablets#upload', via: 'post'
  match '/tablets/new', to: 'tablets#new', via: 'get'
  match "/tablets/:id/edit" => "tablets#edit", via: 'post'

  resources :tablets do
    collection { post :import }
  end

  # match '/exec_sql', to: 'tablets#exec_sql', via: 'post'

  resources :tablets do
    collection { post :exec_sql }
  end

  resources :tablets do
    collection { post :remote_test }
  end

  resources :tablets do
    collection { post :remote_form }
  end

  # resources :tablets do
    # collection do
      # post :exec_sql
    # end
  # end


  match "/tablets/:id" => "tablets#update", via: 'get'


  resources :tablets do
    member do
      get 'export'
    end
  end

  resources :tablets do
    collection do
      post :dbclear
    end
  end

  resources :tablets do
    collection do
      post :dbdelete
    end
  end


  # resources :tablets do
    # get "results_content", :on => :member
  # end

  resources :tablets do
    collection do
      get :results_content
    end
  end


  # match "/tablets/dbclear" => "tablets#dbclear", via: :all

  resources :tablets









  get "tab1lets/index"
  get "tab1lets/show"
  match '/tab1lets/upload', to: 'tab1lets#upload', via: 'post'
  match '/tab1lets/new', to: 'tab1lets#new', via: 'get'
  match "/tab1lets/:id/edit" => "tab1lets#edit", via: 'post'

  resources :tab1lets do
    collection { post :import }
  end

  match "/tab1lets/:id" => "tab1lets#update", via: 'get'


  resources :tab1lets do
    member do
      get 'export'
    end
  end

  resources :tab1lets do
    collection do
      post :dbclear
    end
  end

  resources :tab1lets do
    collection do
      post :dbdelete
    end
  end

  # match "/tab1lets/dbclear" => "tab1lets#dbclear", via: :all

  resources :tab1lets






  get "tab2lets/index"
  get "tab2lets/show"
  match '/tab2lets/upload', to: 'tab2lets#upload', via: 'post'
  match '/tab2lets/new', to: 'tab2lets#new', via: 'get'
  match "/tab2lets/:id/edit" => "tab2lets#edit", via: 'post'

  resources :tab2lets do
    collection { post :import }
  end

  match "/tab2lets/:id" => "tab2lets#update", via: 'get'


  resources :tab2lets do
    member do
      get 'export'
    end
  end

  resources :tab2lets do
    collection do
      post :dbclear
    end
  end

  resources :tab2lets do
    collection do
      post :dbdelete
    end
  end

  # match "/tab2lets/dbclear" => "tab2lets#dbclear", via: :all

  resources :tab2lets





  get "tab3lets/index"
  get "tab3lets/show"
  match '/tab3lets/upload', to: 'tab3lets#upload', via: 'post'
  match '/tab3lets/new', to: 'tab3lets#new', via: 'get'
  match "/tab3lets/:id/edit" => "tab3lets#edit", via: 'post'

  resources :tab3lets do
    collection { post :import }
  end

  match "/tab3lets/:id" => "tab3lets#update", via: 'get'


  resources :tab3lets do
    member do
      get 'export'
    end
  end

  resources :tab3lets do
    collection do
      post :dbclear
    end
  end

  resources :tab3lets do
    collection do
      post :dbdelete
    end
  end

  # match "/tab3lets/dbclear" => "tab3lets#dbclear", via: :all

  resources :tab3lets






  get "tab4lets/index"
  get "tab4lets/show"
  match '/tab4lets/upload', to: 'tab4lets#upload', via: 'post'
  match '/tab4lets/new', to: 'tab4lets#new', via: 'get'
  match "/tab4lets/:id/edit" => "tab4lets#edit", via: 'post'

  resources :tab4lets do
    collection { post :import }
  end

  match "/tab4lets/:id" => "tab4lets#update", via: 'get'


  resources :tab4lets do
    member do
      get 'export'
    end
  end

  resources :tab4lets do
    collection do
      post :dbclear
    end
  end

  resources :tab4lets do
    collection do
      post :dbdelete
    end
  end

  # match "/tab4lets/dbclear" => "tab4lets#dbclear", via: :all

  resources :tab4lets

  
  
  
  
  match "/optemails/edit/:id" => "optemails#edit", via: 'post'
  match "/EmailPreferences" => "optemails#new", via: 'get'  
  # match "/EmailPreferences/:id" => "optemails#edit", via: 'get'
  # match "/EmailPreferencesSaved/:id" => "optemails#show", via: 'get'
  match "/optemails/:id" => "optemails#update", via: 'post'
  match "/EmailPreferencesSaved" => "optemails#create_success", via: 'get'

  resources :optemails
  
  
  
  
  
  
  
  
  
  
  # get "mtab1lets/index"
  # get "mtab1lets/update_show"
  # match "/mtab1lets/show/:id" => "mtab1lets#show", via: 'get'
  # match '/mtab1lets/new', to: 'mtab1lets#new', via: 'get'
  # match "/mtab1lets/:id/edit" => "mtab1lets#edit", via: 'post'
  # match '/mtab1lets/upload', to: 'mtab1lets#upload', via: 'post'
#   
  # resources :mtab1lets do
    # collection { post :import }
  # end
# 
  # resources :mtab1lets do
    # member do
      # get 'export'
    # end
  # end
# 
  # resources :mtab1lets do
    # collection { post :exec_sql }
  # end
# 
  # resources :mtab1lets do
    # collection do
      # post :dbclear
    # end
  # end
# 
  # resources :mtab1lets do
    # collection do
      # post :dbdelete
    # end
  # end
# 
  # match "/mtab1lets/:id" => "mtab1lets#update", via: 'post'
# 
  # resources :mtab1lets


  match "/TestOptouts" => "test_optouts#edit", via: 'get'
  # match "/test_optouts/:id" => "mtab1lets#update", via: 'post'
  
  # match '/TestOptouts', to: 'test_optouts#new', via: 'get'
  resources :test_optouts

  
  # match '/:id', :to => proc { |env|
#   
      # id = env["action_dispatch.request.path_parameters"][:id]
#   
        # target = Slug.find_by!(slug: id).target
#   
        # controller = [target.class.to_s.tableize, 'controller'].join('_').classify.constantize
#   
        # controller.action('show').call(env)
#   
    # }, :as => :slugable, via: ['get']
    
  
  
  # resources :sessions, only: [:new, :create, :destroy]
  
  # match '/users/new', to: 'users#new', via: 'get'
  # match '/sessions/new', to: 'sessions#new', via: 'get'
  
  # match '/signout', to: 'sessions#destroy', via: 'get'

  # match "/users/:id/create" => "users#show", via: 'get'
  # match"/users/:id/admins/index" => "admins#index", via: 'get'


  
  
  # get "edmatchups/index"
  # get "edmatchups/new"
  # get "edmatchups/create"
  # get "edmatchups/show"
  # get "edmatchups/edit"
  # get "edmatchups/update"
  # get "edmatchups/destroy"
  # get "registers/index"
  # get "registers/new"
  # get "registers/show"
  # get "registers/update"
  # get "access_publisher/login"
  # get "access_publisher/show"
  # get "access_publisher/update"
  # get "access_institute/login"
  # get "access_institute/show"
  # get "access_institute/update"
  # get "publishers/index"
  # get "publishers/new"
  # get "publishers/show"
  # get "publishers/update"
  # get "user_publishers/index"
  # get "user_publishers/new"
  # get "user_publishers/show"
  # get "user_publishers/update"
  
  
  # get "users/index"
  # get "users/show"
  
  

  # resources :access do
    # member do
      # post 'attempt_login'
    # end
  # end


  # resources :institutes do
    # member do
      # post 'create'
    # end
  # end
  
  # resources :publishers do
    # member do
      # post 'create'
    # end
  # end

  # resources :users do
    # member do
      # post 'create'
    # end
  # end
  
  # get "logout/index"

  

  # match '/about', to: 'users#about', via: 'get'
  # match '/blogs', to: 'users#blogs', via: 'get'
  # match '/home', to: 'users#home', via: 'get'
  # match '/news', to: 'users#news', via: 'get'
  # match '/services', to: 'users#services', via: 'get'


  # get "sessions/new"
  


  # match '/access/access/login', to: 'access#login', :as => :login, via: ['get', 'post']  
  # match '/access/access/attempt_login', to: 'access#attempt_login', :as => 'attempt_login', via: ['post']
    

  # match '/publishers', to: 'publishers#index', via: 'get'
  # match "/publishers/:id" => "publishers#update", via: 'post'
  # match '/publishers/new', to: 'publishers#new', via: 'get'
  # match '/publishers/home', to: 'publishers#home', via: 'get'

  # match '/institutes', to: 'institutes#index', via: 'get'
  # match "/institutes/:id" => "institutes#update", via: 'post'
  # match '/institutes/new', to: 'institutes#new', via: 'get'
  # match '/institutes/home', to: 'institutes#home', via: 'get'
  
  #match '/user_institutes_create', to: 'user_institutes#create_login', via: 'get'

  # match "/students/:id" => "students#update", via: 'post'
  # match '/students/new', to: 'students#new', via: 'get'
  # match '/students/home', to: 'students#home', via: 'get'
  # match '/students/show', to: 'students#show', via: 'get'

  # match "/teachers/:id" => "teachers#update", via: 'post'
  # match '/teachers/new', to: 'teachers#new', via: 'get'
  # match '/teachers/home', to: 'teachers#home', via: 'get'


  #match "/admins_index/:id" => "admins#index", via: 'get'




  # match '/access/publisher/login', to: 'access_publisher#login', via: ['get', 'post']  
  # match '/access/publisher/attempt_login_publisher', to: 'access_publisher#attempt_login_publisher', :as => 'attempt_login_publisher', via: ['post']


  # match '/access/institute/login', to: 'access_institute#login', via: ['get', 'post']  
  # match '/access/institute/attempt_login_institute', to: 'access_institute#attempt_login_institute', :as => 'attempt_login_institute', via: ['post']


  # match "/users/:id" => "users#update", via: 'post'
  
  #match ':controller(/:action(/:id(.:format)))'
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
