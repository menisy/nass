Nass::Application.routes.draw do

  get 'registration/students' => 'registrations#students', as: :students_reg
  get 'registration/companies' => 'registrations#employers', as: :employers_reg

  devise_for :employers

  devise_for :students

  devise_for :users

  devise_scope :employers do
    root to: "refinery/pages#home"
  end

  devise_scope :students do
    root to: "refinery/pages#home"
  end

  devise_scope :users do
    root to: "refinery/admin/dashboard#index"
  end

  get '/switch/:lcl' => 'locals#switch', as: :switch_locale

  resources :jobs


  get 'candidates/' => 'candidates#index', as: :candidates
  get 'candidates/:id' => 'candidates#show', as: :candidate

  post 'jobs/' => 'jobs#create'
  put 'jobs/' => 'jobs#update'

  get 'edit_job/:id' => 'jobs#edit', as: :edit_job


  get 'jobs/:id' => 'jobs#show', as: :job_details
  get 'jobs/' => 'jobs#index'

  get 'jobs/:id/apply' => 'jobs#apply', as: :job_apply

  post 'registration/' => 'registrations#create'
  put 'registration/' => 'registrations#update'

  post 'emp_registration/' => 'registrations#emp_create'
  put 'emp_registration/' => 'registrations#emp_update'

  # get 'export_candidates/' => 'exports#candidates', as: :export

  resources :exports, only: [] do
    collection do
      post 'candidates'
      get 'companies'
      get 'jobs'
      get 'job_applications'
      post 'import'
    end
  end

  # This line mounts Refinery's routes at the root of your application.
  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  #root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  mount Refinery::Core::Engine, :at => '/'
end
