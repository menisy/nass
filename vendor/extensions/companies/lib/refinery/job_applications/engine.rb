module Refinery
  module Companies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Companies

      engine_name :refinery_companies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "job_applications"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.companies_admin_job_applications_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/companies/job_application'
          }
          plugin.menu_match = %r{refinery/companies/job_applications(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::JobApplications)
      end
    end
  end
end
