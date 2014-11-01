module Refinery
  module HomePhotos
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::HomePhotos

      engine_name :refinery_home_photos

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "home_photos"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.home_photos_admin_home_photos_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/home_photos/home_photo',
            :title => 'link'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::HomePhotos)
      end
    end
  end
end
