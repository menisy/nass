module Refinery
  module Companies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Companies

      engine_name :refinery_companies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "education_levels"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.companies_admin_education_levels_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/companies/education_level',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/companies/education_levels(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::EducationLevels)
      end
    end
  end
end
