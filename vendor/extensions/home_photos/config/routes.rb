Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :home_photos do
    resources :home_photos, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :home_photos, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :home_photos, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
