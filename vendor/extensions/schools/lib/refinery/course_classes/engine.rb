module Refinery
  module Schools
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Schools

      engine_name :refinery_schools

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "course_classes"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.schools_admin_course_classes_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/schools/course_class',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/schools/course_classes(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::CourseClasses)
      end
    end
  end
end
