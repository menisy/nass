Refinery::Core::Engine.routes.draw do

  # Admin routes
  namespace :personal_infos, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :personal_infos, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
