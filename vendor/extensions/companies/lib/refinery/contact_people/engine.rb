module Refinery
  module Companies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Companies

      engine_name :refinery_companies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "contact_people"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.companies_admin_contact_people_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/companies/contact_person',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/companies/contact_people(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::ContactPeople)
      end
    end
  end
end
