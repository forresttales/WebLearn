Weblearn::Application.routes.draw do
   
   
  root to: 'static_pages#index'
  match '/weblearn', to: 'static_pages#index', via: 'get' #only for local Apache

  match '/', to: 'static_pages#index', via: 'get'
  match '/Privacy', to: 'static_pages#privacy', via: 'get'
  match '/About', to: 'static_pages#about', via: 'get'
  match '/AboutUs', to: 'static_pages#about', via: 'get'
  match '/KnowStory', to: 'static_pages#knowstory', via: 'get'
  match '/Events', to: 'eventpages#index', via: 'get'
  # match '/Papers', to: 'static_pages#papers', via: 'get'
  match '/Papers', to: 'papers#index', via: 'get'
  match '/Reports', to: 'static_pages#reports', via: 'get'  
  match '/Sponsor', to: 'static_pages#sponsor', via: 'get'
  match '/Advertise', to: 'static_pages#advertise', via: 'get'
  match '/Survey', to: 'static_pages#survey', via: 'get'
  match '/Articles', to: 'static_pages#articles', via: 'get'
  match '/Event-Articles', to: 'static_pages#event_articles', via: 'get'
  match '/Talk-Here', to: 'static_pages#talk_here', via: 'get'
  match '/Submit-Article', to: 'static_pages#submit_article', via: 'get'
  match '/Digital-Curriculum-Strategy-Discussions', to: 'event1pages#digital_strat', via: 'get'
  match '/Flipped-Conferences', to: 'event2pages#flipped_conf', via: 'get'
  match '/CBOL-Main', to: 'event2pages#cbol_main', via: 'get'
  match '/CBOL-Agenda', to: 'event2pages#cbol_agenda', via: 'get'
  match '/CBOL-Speaker', to: 'event2pages#cbol_speakers', via: 'get'
  match '/CBOL-Materials', to: 'event2pages#cbol_materials', via: 'get'
  match '/CBOL-LCstudy', to: 'event2pages#cbol_LCstudy', via: 'get'

  # match '/Events', to: 'events#index', via: 'get'
  match '/events', to: 'eventpages#index', via: 'get'
  match '/index', to: 'static_pages#index', via: 'get'
  match '/sponsor', to: 'static_pages#sponsor', via: 'get'
  match '/papers', to: 'static_pages#papers', via: 'get'
  match '/edmatchup', to: 'static_pages#edmatchup', via: 'get'
  match '/privacy', to: 'static_pages#privacy', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/reports', to: 'static_pages#reports', via: 'get'  

  
  resources :eventpages
  
  match '/Schedule', to: 'event1pages#index', via: 'get'
  resources :event1pages

  match '/SpecialGathering', to: 'event2pages#index', via: 'get'  
  resources :event2pages

   match '/InternetSeminars', to: 'event3pages#index', via: 'get'  
  resources :event3pages

   
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


  # aliases
  #get "pages/events_agenda"
  #match '/Schedule', to: 'pages#events_agenda', via: ['get']
  match '/EventRegistration', to: 'reg_events#new', via: ['get']

  match '/CBOL-Speaker-Registration', to: 'reg_event_conferences#new', via: ['get']
  resources :reg_event_conferences


  match '/Signup', to: 'users#new', via: 'get'

  resources :sessions, only: [:new, :create, :destroy]

  match '/Signin', to: 'sessions#new', via: 'get'
  match '/Signout', to: 'sessions#destroy', via: 'get'



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
  resources :publishers
  resources :recruiters



  resources :contacts
  resources :reg_letters
  resources :reg_events
  resources :reg_communs
  resources :reg_seminars

  get "archives/show"
  resources :archives




  match '/Event-News', to: 'eventnews#event_photos', via: 'get'
  
  match '/Event-Photos-Columbia', to: 'eventnews#event_1_photos', via: 'get'
  match '/Event-Photos-Fresno', to: 'eventnews#event_2_photos', via: 'get'
  match '/Event-Photos-Houston', to: 'eventnews#event_3_photos', via: 'get'
  match '/Event-Photos-Chicago', to: 'eventnews#event_4_photos', via: 'get'
  match '/Event-Photos-Richmond', to: 'eventnews#event_5_photos', via: 'get'
  match '/Event-Photos-LA', to: 'eventnews#event_6_photos', via: 'get'
  match '/Event-Photos-Minneapolis', to: 'eventnews#event_7_photos', via: 'get'
  match '/Event-Photos-Denver', to: 'eventnews#event_8_photos', via: 'get'
  match '/Event-Photos-Dallas', to: 'eventnews#event_9_photos', via: 'get'
  match '/Event-Photos-Newark', to: 'eventnews#event_10_photos', via: 'get'
  match '/Event-Photos-Santa-Clara', to: 'eventnews#event_11_photos', via: 'get'
  match '/Event-Photos-Tampa', to: 'eventnews#event_12_photos', via: 'get'
  match '/Event-Photos-Boston', to: 'eventnews#event_13_photos', via: 'get'
  match '/Event-Photos-New-Orleans', to: 'eventnews#event_14_photos', via: 'get'
  
 # get "eventnews/photos_1"
 # get "eventnews/photos_2"
 # get "eventnews/photos_3"
 # get "eventnews/photos_4"
 # get "eventnews/photos_5"
 # get "eventnews/photos_6"
 # get "eventnews/photos_7"



  # publishers  
  
  #get 'publishers/index'
  match "/Publishers" => "publishers#index", via: 'get'  
  match '/PublishersUpload', to: 'publishers#upload', via: 'post'
  match '/PublishersNew', to: 'publishers#new', via: 'get'
  match "/PublishersEdit" => "publishers#edit", via: 'post'
  match "/PublishersUpdate" => "publishers#update", via: 'post'

  # match "/Publishers/:id/edit" => "publishers#edit", via: 'post'
  # match "/publishers/:id" => "publishers#update", via: 'post'
  
  resources :publishers do
    collection do
      post :settings
    end
  end

  resources :publishers

  
  #get "publisher_images/index"
  get "publisher_images/show"
  match '/PublisherImages', to: 'publisher_images#index', via: 'get'
  match '/publisher_images/upload', to: 'publisher_images#upload', via: 'post'
  match '/PublisherNewImage', to: 'publisher_images#new', via: 'get'
  match "/publisher_images/:id/edit" => "publisher_images#edit", via: 'post'
  match "/publisher_images/:id" => "publisher_images#update", via: 'get'

  resources :publisher_images do
    collection { post :set_primary }
  end

  resources :publisher_images


  # get "publisher_profiles/index"
  get "publisher_profiles/show"
  match '/PublisherProfiles', to: 'publisher_profiles#index', via: 'get'
  match '/publisher_profiles/upload', to: 'publisher_profiles#upload', via: 'post'
  match '/publisher_profiles/new', to: 'publisher_profiles#new', via: 'get'
  match "/publisher_profiles/:id/edit" => "publisher_profiles#edit", via: 'post'
  match "/publisher_profiles/:id" => "publisher_profiles#update", via: 'get'

  resources :publisher_profiles


  # get "publisher_settings/index"
  get "publisher_settings/show"
  match '/PublisherSettings', to: 'publisher_settings#index', via: 'get'
  match '/publisher_settings/upload', to: 'publisher_settings#upload', via: 'post'
  match '/publisher_settings/new', to: 'publisher_settings#new', via: 'get'
  match "/publisher_settings/:id/edit" => "publisher_settings#edit", via: 'post'
  match "/publisher_settings/:id" => "publisher_settings#update", via: 'get'

  resources :publisher_settings


  # get "publisher_products/index"
  get "publisher_products/show"
  match '/PublisherProducts', to: 'publisher_products#index', via: 'get'
  match '/publisher_products/upload', to: 'publisher_products#upload', via: 'post'
  match '/PublisherAddProduct', to: 'publisher_products#new', via: 'get'
  match "/publisher_products/:id/edit" => "publisher_products#edit", via: 'post'
  match "/publisher_products/:id" => "publisher_products#update", via: 'get'

  resources :publisher_products


  get "publisher_product_descriptions/show"
  match '/PublisherProductDescription', to: 'publisher_product_descriptions#index', via: 'get'
  match '/publisher_product_descriptions/upload', to: 'publisher_product_descriptions#upload', via: 'post'
  match '/PublisherAddProductInformation', to: 'publisher_product_descriptions#new', via: 'get'
  match "/publisher_product_descriptions/:id/edit" => "publisher_product_descriptions#edit", via: 'post'
  match "/publisher_product_descriptions/:id" => "publisher_product_descriptions#update", via: 'post'

  resources :publisher_product_descriptions




  # institutes
  
  #get 'institutes/index'
  match "/Institutes" => "institutes#index", via: 'get'  
  match '/InstitutesUpload', to: 'institutes#upload', via: 'post'
  match '/InstitutesNew', to: 'institutes#new', via: 'get'
  match "/InstitutesEdit" => "institutes#edit", via: 'post'
  match "/InstitutesUpdate" => "institutes#update", via: 'post'

  # match "/Institutes/:id/edit" => "institutes#edit", via: 'post'
  # match "/institutes/:id" => "institutes#update", via: 'post'
  
  resources :institutes do
    collection do
      post :settings
    end
  end

  resources :institutes

  
  #get "institute_images/index"
  get "institute_images/show"
  match '/InstituteImages', to: 'institute_images#index', via: 'get'
  match '/institute_images/upload', to: 'institute_images#upload', via: 'post'
  match '/InstituteNewImage', to: 'institute_images#new', via: 'get'
  match "/institute_images/:id/edit" => "institute_images#edit", via: 'post'
  match "/institute_images/:id" => "institute_images#update", via: 'get'

  resources :institute_images do
    collection { post :set_primary }
  end

  resources :institute_images


  # get "institute_profiles/index"
  get "institute_profiles/show"
  match '/InstituteProfiles', to: 'institute_profiles#index', via: 'get'
  match '/institute_profiles/upload', to: 'institute_profiles#upload', via: 'post'
  match '/institute_profiles/new', to: 'institute_profiles#new', via: 'get'
  match "/institute_profiles/:id/edit" => "institute_profiles#edit", via: 'post'
  match "/institute_profiles/:id" => "institute_profiles#update", via: 'get'

  resources :institute_profiles


  # get "institute_settings/index"
  get "institute_settings/show"
  match '/InstituteSettings', to: 'institute_settings#index', via: 'get'
  match '/institute_settings/upload', to: 'institute_settings#upload', via: 'post'
  match '/institute_settings/new', to: 'institute_settings#new', via: 'get'
  match "/institute_settings/:id/edit" => "institute_settings#edit", via: 'post'
  match "/institute_settings/:id" => "institute_settings#update", via: 'get'

  resources :institute_settings


  # get "institute_queries/index"
  # get "institute_queries/show"
  match '/InstituteQuery/:id', to: 'institute_queries#show', via: 'get'
  match '/InstituteQueries', to: 'institute_queries#index', via: 'get'
  match '/institute_queries/upload', to: 'institute_queries#upload', via: 'post'
  match '/InstituteAddQuery', to: 'institute_queries#new', via: 'get'
  match "/institute_queries/:id/edit" => "institute_queries#edit", via: 'post'
  match "/institute_queries/:id" => "institute_queries#update", via: 'post'

  resources :institute_queries do
    member do
      post :execute
    end
  end


  resources :institute_queries


  #get "institute_query_results/show"
  match '/InstituteQueryResult/:id', to: 'institute_query_results#show', via: 'get'  
  match '/InstituteQueryResults/:id', to: 'institute_query_results#index', via: 'get'
  match '/institute_query_results/upload', to: 'institute_query_results#upload', via: 'post'
  match '/InstituteAddQueryDetails', to: 'institute_query_results#new', via: 'get'
  match "/institute_query_results/:id/edit" => "institute_query_results#edit", via: 'post'
  match "/institute_query_results/:id" => "institute_query_results#update", via: 'post'

  resources :institute_query_results



  match "/optemails/edit/:id" => "optemails#edit", via: 'post'
  match "/EmailPreferences" => "optemails#new", via: 'get'  
  # match "/EmailPreferences/:id" => "optemails#edit", via: 'get'
  # match "/EmailPreferencesSaved/:id" => "optemails#show", via: 'get'
  match "/optemails/:id" => "optemails#update", via: 'post'
  match "/EmailPreferencesSaved" => "optemails#create_success", via: 'get'

  resources :optemails



  resources :dl_contacts do
    collection do
      post :create_dl
    end
  end

  resources :papers do
    collection do
      post :search_contact
    end
  end  



end
