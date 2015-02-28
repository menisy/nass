Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :addresses do
    resources :addresses, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :addresses, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :addresses, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
