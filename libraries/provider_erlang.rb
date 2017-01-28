class Chef
  class Provider
    class Erlang < Chef::Provider::LWRPBase
      use_inline_resources

      def whyrun_supported?
        true
      end

    end
  end
end
