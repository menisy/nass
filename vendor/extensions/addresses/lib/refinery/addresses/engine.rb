module Refinery
  module Addresses
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Addresses

      engine_name :refinery_addresses

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "addresses"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.addresses_admin_addresses_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/addresses/address',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Addresses)
      end
    end
  end
end
