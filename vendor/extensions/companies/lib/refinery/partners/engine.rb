module Refinery
  module Companies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Companies

      engine_name :refinery_companies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "partners"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.companies_admin_partners_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/companies/partner',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/companies/partners(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Partners)
      end
    end
  end
end
