module Refinery
  module Schools
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Schools

      engine_name :refinery_schools

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "schools"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.schools_admin_schools_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/schools/school',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Schools)
      end
    end
  end
end
