Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :companies do
    resources :companies, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :companies, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :companies do
    resources :contact_people, :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/companies" do
      resources :contact_people, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :companies do
    resources :jobs, :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/companies" do
      resources :jobs, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :companies do
    resources :industries, :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/companies" do
      resources :industries, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :companies do
    resources :job_roles, :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/companies" do
      resources :job_roles, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :companies do
    resources :job_types, :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/companies" do
      resources :job_types, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :companies do
    resources :education_levels, :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/companies" do
      resources :education_levels, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :companies do
    resources :career_levels, :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/companies" do
      resources :career_levels, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :companies do
    resources :cities, :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/companies" do
      resources :cities, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :companies do
    resources :areas, :only => [:index, :show]
  end

  # Admin routes
  namespace :companies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/companies" do
      resources :areas, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
