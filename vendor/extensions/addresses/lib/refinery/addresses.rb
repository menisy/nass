require 'refinerycms-core'

module Refinery
  autoload :AddressesGenerator, 'generators/refinery/addresses_generator'

  module Addresses
    require 'refinery/addresses/engine'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
