module Refinery
  module PersonalInfos
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::PersonalInfos

      engine_name :refinery_personal_infos

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "personal_infos"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.personal_infos_admin_personal_infos_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/personal_infos/personal_info',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::PersonalInfos)
      end
    end
  end
end
