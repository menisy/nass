Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :schools do
    resources :schools, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :schools, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :schools, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Admin routes
  namespace :schools, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/schools" do
      resources :programs, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Admin routes
  namespace :schools, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/schools" do
      resources :courses, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Admin routes
  namespace :schools, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/schools" do
      resources :course_classes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
