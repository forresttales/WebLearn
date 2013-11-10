Weblearn::Application.routes.draw do
   

  get "archives/index"
  get "archives/new"
  get "archives/show"
  get "archives/update"
  get "archives/create"
  get "test/basic"
  get "static_pages/test"
  get "static_pages/fonts"

  get "journals/k12_digital"  
  get "journals/facing_down"
  get "journals/five_types"
  get "journals/whats_so_hard"
  get "journals/education_compared"
  get "journals/we_need"
  get "journals/wanted_new_leader"
  get "journals/coffee_chat"
  get "journals/checklist_of_top_10"  
  get "journals/pearson"
  get "journals/nationally_recognized"
  get "journals/to_solution"
  get "journals/tales_to_go"
  get "journals/mycore"
  get "journals/charter_school_assoc"
  get "journals/unique_az"
  get "journals/tales_to_go_releases"
  get "journals/tulsa_charter"
  get "journals/blogs_and_links"
  get "journals/educating_for_the_design"
  get "journals/how_to_be"
  
  
  
  #match '/users/testhome', to: 'users#testhome', via: 'get'
     
  # resources :users do
    # member do
      # get :following, :followers
    # end
  # end
  
  resources :sessions, only: [:new, :create, :destroy]
  
  # resources :microposts, only: [:create, :destroy]
  # resources :relationships, only: [:create, :destroy]
  # root to: 'static_pages#home'
  
  
  # match '/signup', to: 'users#new', via: 'get'
  # match '/signin', to: 'sessions#new', via: 'get'
  
  match '/users/new', to: 'users#new', via: 'get'
  match '/sessions/new', to: 'sessions#new', via: 'get'
  
  # match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/signout', to: 'sessions#destroy', via: 'get'
  
  
  # match '/help', to: 'static_pages#help', via: 'get'
  # match '/about', to: 'static_pages#about', via: 'get'
  # match '/contact', to: 'static_pages#contact', via: 'get'

  match "/users/:id/create" => "users#show", via: 'get'

  
  match"/users/:id/admins/index" => "admins#index", via: 'get'


  
  
  get "admins/index"
  get "admins/new"
  get "admins/create"
  get "admins/show"
  get "admins/edit"
  get "admins/update"
  get "admins/destroy"
  get "admin_registers/index"
  get "admin_registers/new"
  get "admin_registers/create"
  get "admin_registers/show"
  get "admin_registers/edit"
  get "admin_registers/update"
  get "admin_registers/destroy"
  get "admin_publishers/index"
  get "admin_publishers/new"
  get "admin_publishers/create"
  get "admin_publishers/show"
  get "admin_publishers/edit"
  get "admin_publishers/update"
  get "admin_publishers/destroy"
  get "admin_institutes/index"
  get "admin_institutes/new"
  get "admin_institutes/create"
  get "admin_institutes/show"
  get "admin_institutes/edit"
  get "admin_institutes/update"
  get "admin_institutes/destroy"
  get "edmatchups/index"
  get "edmatchups/new"
  get "edmatchups/create"
  get "edmatchups/show"
  get "edmatchups/edit"
  get "edmatchups/update"
  get "edmatchups/destroy"
  # get "access_admins/index"
  # get "access_admins/new"
  # get "access_admins/show"
  # get "access_admins/update"
  # get "registers/index"
  # get "registers/new"
  # get "registers/show"
  # get "registers/update"
  get "access_publisher/login"
  get "access_publisher/show"
  get "access_publisher/update"
  get "access_institute/login"
  get "access_institute/show"
  get "access_institute/update"
  get "publishers/index"
  get "publishers/new"
  get "publishers/show"
  get "publishers/update"
  get "user_publishers/index"
  get "user_publishers/new"
  get "user_publishers/show"
  get "user_publishers/update"
  
  
  get "users/index"
  get "users/show"
  
  # get "user_vendors/show"
  # get "vendors/new"
  # get "vendors/show"
  # get "user_surveys/new"
  # get "user_surveys/show"
  # get "surveys/new"
  # get "surveys/show"
  # get "user_institutes/new"
  # get "user_institutes/show"
  # get "institutes/new"
  # get "institutes/show"
  
  # root to: 'users#home'

  # resources :sessions, only: [:new, :create, :destroy]
  # resources :microposts, only: [:create, :destroy]
  # resources :relationships, only: [:create, :destroy]

  root to: 'static_pages#index'

  match '/signup', to: 'users#new', via: 'get'

  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  match '/index', to: 'static_pages#index', via: 'get'
  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/edmatchup', to: 'static_pages#edmatchup', via: 'get'
  match '/events', to: 'static_pages#events', via: 'get'
  match '/news', to: 'static_pages#news', via: 'get'
  match '/reports', to: 'static_pages#reports', via: 'get'  
  match '/articles', to: 'static_pages#articles', via: 'get'
  match '/advertise', to: 'static_pages#advertise', via: 'get'
  
  #match '/ARTICLES-5-LeiLani-How-Big', to: 'public#ARTICLES-5-LeiLani-How-Big', via: 'get'
  

  resources :access do
    member do
      post 'attempt_login'
    end
  end
# 
  # resources :access_institute do
    # member do
      # post 'attempt_login'
    # end
  # end

  # resources :user_contacts do
    # member do
      # post 'create'
    # end
  # end

  resources :contacts do
    member do
      post 'create'
    end
  end


  resources :institutes do
    member do
      post 'create'
    end
  end
  
  resources :publishers do
    member do
      post 'create'
    end
  end


  # resources :registers do
    # member do
      # post 'create'
    # end
  # end

  resources :users do
    member do
      post 'create'
    end
  end
  
  
  #get "admin_users/index"
  get "admin_users/delete"
  get "admin_users/edit"
  #get "admin_users/list"
  get "admin_users/new"
  get "admin_users/logout"
  
  get "admin_users/view"
  
  
  get "logout/index"
  
  
  # get "contacts/edit"
  # get "contacts/delete", via: :all
  # get "contacts/show"
  # get "contacts/view"
  
  get "admin_contacts/edit"
  get "admin_contacts/delete", via: :all
  get "admin_contacts/show"
  get "admin_contacts/view"
  
  # get "user_contacts/show"
  # get "user_contacts/edit", via: :all
  # get "user_contacts/update", via: :all
  
  get "contacts/show"
  get "contacts/edit", via: :all
  get "contacts/update", via: :all
  
  
  
  #get "user_contacts/testnewcontact"
  
  
  # get "contacts/jqmenu"
  # get "contacts/get_message"

  get "admin_contacts/jqmenu"
  get "admin_contacts/get_message"

  #get "users/format_yui"
  

  # resources :contacts
  resources :admin_contacts
  resources :students
  resources :teachers
  resources :institutes
  resources :publishers
  resources :static_pages


  match '/about', to: 'users#about', via: 'get'
  match '/blogs', to: 'users#blogs', via: 'get'
  match '/home', to: 'users#home', via: 'get'
  match '/news', to: 'users#news', via: 'get'
  match '/services', to: 'users#services', via: 'get'
  #match '/directory', to: 'users#directory', via: 'get'
  match '/edmatchup', to: 'users#edmatchup', via: 'get'


  match '/admin_contacts_list', to: 'admin_contacts#list', via: 'get'
  match '/admin_users_list', to: 'admin_users#list', via: 'get'  
  match '/admin_institutes_list', to: 'admin_institutes#list', via: 'get'
  match '/admin_publishers_list', to: 'admin_publishers#list', via: 'get'
  match '/admin_teachers_list', to: 'admin_teachers#list', via: 'get'
  match '/admin_students_list', to: 'admin_students#list', via: 'get'


  get "sessions/new"
  
  #match '/sessions/new', to: 'sessions#new', :as => :login, via: ['get', 'post']  


  match '/access/access/login', to: 'access#login', :as => :login, via: ['get', 'post']  
  match '/access/access/attempt_login', to: 'access#attempt_login', :as => 'attempt_login', via: ['post']
  
  
  
  
  
  
  
  match '/access/access_admins/login', to: 'access_admins#login', :as => :login_admin, via: ['get', 'post']  

      
  # match '/user_contacts', to: 'user_contacts#new', via: 'get'
  # match "/user_contacts/:id" => "user_contacts#update", via: 'post'
  match '/contacts', to: 'contacts#new', via: 'get'
  match "/contacts/:id" => "contacts#update", via: 'post'


  match '/publishers', to: 'publishers#index', via: 'get'
  match "/publishers/:id" => "publishers#update", via: 'post'
  match '/publishers/new', to: 'publishers#new', via: 'get'
  match '/publishers/home', to: 'publishers#home', via: 'get'

  match '/institutes', to: 'institutes#index', via: 'get'
  match "/institutes/:id" => "institutes#update", via: 'post'
  match '/institutes/new', to: 'institutes#new', via: 'get'
  match '/institutes/home', to: 'institutes#home', via: 'get'
  
  #match '/user_institutes_create', to: 'user_institutes#create_login', via: 'get'

  match "/students/:id" => "students#update", via: 'post'
  match '/students/new', to: 'students#new', via: 'get'
  match '/students/home', to: 'students#home', via: 'get'
  match '/students/show', to: 'students#show', via: 'get'

  match "/teachers/:id" => "teachers#update", via: 'post'
  match '/teachers/new', to: 'teachers#new', via: 'get'
  match '/teachers/home', to: 'teachers#home', via: 'get'


  #match "/admins_index/:id" => "admins#index", via: 'get'




  match '/access/publisher/login', to: 'access_publisher#login', via: ['get', 'post']  
  match '/access/publisher/attempt_login_publisher', to: 'access_publisher#attempt_login_publisher', :as => 'attempt_login_publisher', via: ['post']


  match '/access/institute/login', to: 'access_institute#login', via: ['get', 'post']  
  match '/access/institute/attempt_login_institute', to: 'access_institute#attempt_login_institute', :as => 'attempt_login_institute', via: ['post']


  # match '/registers/new', to: 'registers#new', via: 'get'
  # match "/registers/:id" => "registers#update", via: 'post'


  #match '/users/new', to: 'users#new', via: 'get'
  match "/users/:id" => "users#update", via: 'post'
  #match "/users/create" => "users#create", via: ['get', 'post']
  
  
  
  #match '/user_institutes_attempt_login', to: 'user_institutes#attempt_login', via: ['get', 'post']

  # get 'access_institute/attempt_login', via: ['post']
  # match '/tasks/:id/finish', :to => 'tasks#finish', :as => 'finish_task'


  match '/demostyle', to: 'users#styledemo', via: 'get'
  match '/democolumns3', to: 'users#columns3', via: 'get'
  match '/demofullwidth', to: 'users#fullwidth', via: 'get'
  match '/demogallery', to: 'users#gallery', via: 'get'
  match '/demoportfolio', to: 'users#portfolio', via: 'get'

  match '/edmatchups', to: 'edmatchups#index', via: 'get'


  match '/home_1', to: 'users#home_1', via: 'get'
  match '/about_1', to: 'users#about_1', via: 'get'
  match '/blogs_1', to: 'users#blogs_1', via: 'get'
  match '/directory_1', to: 'users#directory_1', via: 'get'
  match '/news_1', to: 'users#news_1', via: 'get'
  match '/services_1', to: 'users#services_1', via: 'get'

  match '/create_account', to: 'users#services_1', via: 'get'


  # get "users/style-demo"
  # get "users/3-columns"
  # get "users/full-width"
  # get "users/gallery"
  # get "users/portfolio"










  
  
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
