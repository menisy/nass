module Refinery
  module Companies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Companies

      engine_name :refinery_companies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "career_levels"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.companies_admin_career_levels_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/companies/career_level',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/companies/career_levels(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::CareerLevels)
      end
    end
  end
end
