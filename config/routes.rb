Weblearn::Application.routes.draw do
   
  match '/weblearn', to: 'static_pages#index', via: 'get' #only for local Apache
   
  root to: 'homes#index'

  match '/', to: 'homes#index', via: 'get'
  match '/Privacy', to: 'static_pages#privacy', via: 'get'
  match '/About', to: 'static_pages#about', via: 'get'
  match '/AboutUs', to: 'static_pages#about', via: 'get'
  match '/KnowStory', to: 'static_pages#knowstory', via: 'get'
  # match '/Special-Report', to: 'static_pages#spec_report', via: 'get'
  match '/Special-Report', to: 'special_reports#index', via: 'get'
  match '/Events', to: 'eventpages#index', via: 'get'
  # match '/Papers', to: 'static_pages#papers', via: 'get'
  match '/Papers', to: 'papers#index', via: 'get'
  match '/Reports', to: 'static_pages#reports', via: 'get'  
  match '/Sponsor', to: 'static_pages#sponsor', via: 'get'
  match '/Advertise', to: 'static_pages#advertise', via: 'get'
  match '/Self-Assessment', to: 'static_pages#survey', via: 'get'
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
  match '/Learn-More', to: 'users#learn_more', via: 'get'
  match 'LetterRegistration', to: 'reg_letters#new', via: 'get'
  match 'LetterRegistration', to: 'reg_letters#create', via: 'post'
  match '/ContactUs', to: 'contacts#new', via: 'get'

  match '/CommunityRegistration', to: 'reg_communs#new', via: 'get'
  match '/SeminarRegistration', to: 'reg_seminars#new', via: ['get']


  resources :contacts
  # resources :reg_letters
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

  resources :special_reports do
    collection do
      post :search_contact
    end
  end  


end
