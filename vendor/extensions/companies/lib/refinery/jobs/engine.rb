module Refinery
  module Companies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Companies

      engine_name :refinery_companies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "jobs"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.companies_admin_jobs_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/companies/job',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/companies/jobs(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Jobs)
      end
    end
  end
end
