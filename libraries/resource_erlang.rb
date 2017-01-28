require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class Erlang < Chef::Resource::LWRPBase
      self.resource_name = :erlang
      actions :install, :remove
      default_action :install

      provides(:erlang)

      # used by source providers
      attribute :source_checksum, kind_of: String, default: nil
      attribute :source_prefix, kind_of: String, default: '/usr/local'
      attribute :source_url, kind_of: String, default: nil
      attribute :source_version, kind_of: String, default: nil

      # used by linux package providers
      attribute :package_name, kind_of: String, default: nil
      attribute :package_version, kind_of: String, default: nil
      attribute :package_action, kind_of: Symbol, default: :install

      # used by Windows providers
      attribute :windows_display_name, kind_of: String, default: nil
      attribute :windows_package_url,  kind_of: String, default: nil
      attribute :windows_package_checksum, kind_of: String, default: nil
      attribute :windows_package_version, kind_of: String, default: nil
      attribute :windows_install_dir, kind_of: String, default: nil
    end
  end
end
