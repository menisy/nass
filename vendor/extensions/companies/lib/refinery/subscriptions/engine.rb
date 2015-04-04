module Refinery
  module Companies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Companies

      engine_name :refinery_companies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "subscriptions"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.companies_admin_subscriptions_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/companies/subscription',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/companies/subscriptions(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Subscriptions)
      end
    end
  end
end
