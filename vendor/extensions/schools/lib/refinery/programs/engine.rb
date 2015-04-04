module Refinery
  module Schools
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Schools

      engine_name :refinery_schools

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "programs"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.schools_admin_programs_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/schools/program',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/schools/programs(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Programs)
      end
    end
  end
end
